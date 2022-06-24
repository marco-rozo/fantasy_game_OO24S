package br.edu.utfpr.fanstasygame.Team;

import br.edu.utfpr.fanstasygame.Player.PlayerModel;
import br.edu.utfpr.fanstasygame.PlayerTeam.PlayerTeamModel;
import br.edu.utfpr.fanstasygame.PlayerTeam.PlayerTeamService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
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
public record TeamService (TeamRepository teamRepository, PlayerTeamService playerTeamService) {

    // * 1.1
    public void createTeam(TeamModel team){
        teamRepository.saveAndFlush(team);
    }

    //Adiciona lista de jogadores ao time (já criado)
    private void addPlayerInTeam(PlayerModel player, TeamModel team){
        var teamtoUpdate = teamRepository.getById(Long.valueOf(1));

        //Pega a lista de jogadores por time
        ArrayList<PlayerTeamModel> players = playerTeamService.getAllPlayersTeam(team);

        try {
            if (!checkPlayerList(player, players)){
                //adiciona os
                players.add(createPlayerTeam(player, team));
                teamtoUpdate.setPlayers(players);
                teamRepository.save(teamtoUpdate);
            }
        } catch (Exception e){
            log.error(e.toString());
        }
    }

    //Verifica se é possivel adicionar o jogador a lista
    private boolean checkPlayerList(PlayerModel player, ArrayList<PlayerTeamModel> list){
        //Jogador nao pode estar inserido na lista
        //Lista não pode ser maior do que 5
        return !list.contains(player) && list.size() != 5;
    }


    //Adiciona os jogadores ao time
    private PlayerTeamModel createPlayerTeam(PlayerModel player, TeamModel team){
        log.info("creating PlayerTeam to player {}, team {}",
                player.getNickName(), team.getId());
        PlayerTeamModel playerTeam = PlayerTeamModel.builder()
                .team(team)
                .player(player)
                .at(LocalDateTime.now())
                .build();

        return playerTeam;
    }
}
