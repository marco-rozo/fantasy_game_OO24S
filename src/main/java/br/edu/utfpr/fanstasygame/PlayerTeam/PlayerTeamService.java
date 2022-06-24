package br.edu.utfpr.fanstasygame.PlayerTeam;

import br.edu.utfpr.fanstasygame.PerformancePerRound.PerformancePerRoundModel;
import br.edu.utfpr.fanstasygame.PerformancePerRound.PerformancePerRoundRepository;
import br.edu.utfpr.fanstasygame.Player.PlayerModel;
import br.edu.utfpr.fanstasygame.Round.RoundModel;
import br.edu.utfpr.fanstasygame.Team.TeamModel;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
@Slf4j
@RequiredArgsConstructor
public class PlayerTeamService {

    private final PlayerTeamRepository playerTeamRepository;

    //Retorno o a lista dos jogadores de X Team
    public ArrayList<PlayerTeamModel> getAllPlayersTeam(TeamModel team){
        return playerTeamRepository.findAllPLayersByTeam(team);
    }

}
