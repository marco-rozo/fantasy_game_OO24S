package br.edu.utfpr.fanstasygame.PointsPerPerformance;

import br.edu.utfpr.fanstasygame.PerformancePerRound.PerformancePerRoundModel;
import br.edu.utfpr.fanstasygame.PerformancePerRound.PerformancePerRoundService;
import br.edu.utfpr.fanstasygame.Player.PlayerModel;
import br.edu.utfpr.fanstasygame.Round.RoundModel;
import br.edu.utfpr.fanstasygame.Team.TeamModel;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;


@Service
@Slf4j
public record PointsPerPerformanceService(PerformancePerRoundService performanceService,
                                          PointsPerPerformanceRepository pointsPerPerformanceRepository) {
    //Pega os valores declarados no .properties
    @Value("${contants.KILL}")
    private static Double KILL;
    @Value("${contants.HS}")
    private static Double HS;
    @Value("${contants.ADR}")
    private static Double ADR;
    @Value("${contants.ASSISTS}")
    private static Double ASSISTS;
    @Value("${contants.DEATH}")
    private static Double DEATH;
    @Value("${contants.KAST}")
    private static Double KAST;
    @Value("${contants.RATING}")
    private static Double RATING;

    // Retorno o desempenho do jogador em X round ocorrido
    public PerformancePerRoundModel getPerformanceByPlayer(PlayerModel player, RoundModel round) {
        log.info("Starting updating stock from list [...]");
        return performanceService.findPerformanceByPlayerInRound(player, round);
    }

    // Salva os pontos calculados
    public Boolean savingPointsForPerformance(PerformancePerRoundModel performance) {
        log.info("Starting to save points for performance ...");

        try {
            Boolean isSafe = calculatingTotalPointValue(
                    pointsPerPerformanceRepository.save(
                            PointsPerPerformanceModel.builder()
                                    .performance(performance)
                                    .adrPoints(calculatePoints(performance.getAdr(), ADR))
                                    .assistsPoints(calculatePoints(Double.valueOf(performance.getAssists()), ASSISTS))
                                    .deathPoints(calculatePoints(Double.valueOf(performance.getDeath()), DEATH))
                                    .kastPoints(calculatePoints(performance.getKast(), KAST))
                                    .killPoints(calculatePoints(Double.valueOf(performance.getKill()), KILL))
                                    .hsPoints(calculatePoints(Double.valueOf(performance.getKill()), HS))
                                    .ratingPoints(calculatePoints(performance.getRating(), RATING))
                                    .build()
                    )
            );
            if (!isSafe){
                log.info("...There was an error saving points ");
            }

            return isSafe;
        } catch (Exception e){
            log.info("Exception: {}", String.valueOf(e));
            return false;
        }
    }

    //Calcula o total de pontos e salva
    private Boolean calculatingTotalPointValue(PointsPerPerformanceModel points) {
        log.info("Starting to save points for performance ...");

        try {
            points.setTotalPoints(
                    points.getAdrPoints() + points.getAssistsPoints() + points.getDeathPoints() + points.getKastPoints()
                            + points.getHsPoints() + points.getKillPoints() + points.getRatingPoints()
            );
            pointsPerPerformanceRepository.save(points);
            return true;
        } catch (Exception exception) {
            log.info("Exception: {}", String.valueOf(exception));
            return false;
        }
    }

    //Realiza o calculo dos pontos de acordo com o tipo
    private Double calculatePoints(Double value, Double constant) {
        log.info("Starting calculation [...]");

        return value * constant;
    }

}
