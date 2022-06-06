package br.edu.utfpr.fanstasygame.Team;

import br.edu.utfpr.fanstasygame.Player.PlayerModel;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/*
* 1.Montar time
*   1.1. Criar time
*   1.2. Adicionar jogador a uma lista
*   1.3. Verificar se jogador já está incluso na lista
*   1.4. Inserir lista de 5 jogadores no banco relacionado ao time q está relacionado ao usuário
*/

@Service
@Slf4j
@RequiredArgsConstructor
public class TeamService {

    private final TeamRepository teamRepository;

    //iniciando o ArrayList vazio
    List<PlayerModel> playersList = new ArrayList<PlayerModel>();

    // * 1.1
    public void createTeam(TeamModel team){
        teamRepository.saveAndFlush(team);
    }

    // * 1.2
    protected void addPLayers(PlayerModel player){
        try {
            if (!checkPlayerList(player)){
                playersList.add(player);
            }
        } catch (Exception e){
            log.error(e.toString());
        }
    }

    protected void addPlayerInTeam(List<PlayerModel> playersList, TeamModel team){
//        var teamtoUpdate = teamRepository.getById(team.getId());
        var teamtoUpdate = teamRepository.getById(Long.valueOf(1));
        teamtoUpdate.setPlayers(playersList);

        // * 1.4 (UPDATE???)
        teamRepository.saveAndFlush(teamtoUpdate);
    }

    // * 1.3
    protected boolean checkPlayerList(PlayerModel player){
        boolean response = !playersList.contains(player) && playersList.size() != 5;
        return response;
    }
}
