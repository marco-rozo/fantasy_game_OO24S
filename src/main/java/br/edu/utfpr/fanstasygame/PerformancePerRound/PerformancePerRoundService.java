package br.edu.utfpr.fanstasygame.PerformancePerRound;

import br.edu.utfpr.fanstasygame.Player.PlayerModel;
import br.edu.utfpr.fanstasygame.Round.RoundModel;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

@Service
@Slf4j
@RequiredArgsConstructor
public class PerformancePerRoundService {

    private final PerformancePerRoundRepository performanceRepository;

    //Retorno o desempenho do jogador em X round ocorrido
    public PerformancePerRoundModel findPerformanceByPlayerInRound(PlayerModel player, RoundModel round){
        log.info("Fetching performance from {}", player.getNickName(), " in round {}", round.getId());
        return performanceRepository.findPerformanceByPlayerInRound(player, round);
    }

}
