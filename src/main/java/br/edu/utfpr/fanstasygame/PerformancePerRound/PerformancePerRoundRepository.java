package br.edu.utfpr.fanstasygame.PerformancePerRound;


import br.edu.utfpr.fanstasygame.Player.PlayerModel;
import br.edu.utfpr.fanstasygame.Round.RoundModel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PerformancePerRoundRepository extends JpaRepository<PerformancePerRoundModel, Long> {

    PerformancePerRoundModel findPerformanceByPlayerInRound(PlayerModel player, RoundModel round);

}
