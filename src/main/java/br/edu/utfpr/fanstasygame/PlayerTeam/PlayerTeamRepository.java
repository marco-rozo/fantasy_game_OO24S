package br.edu.utfpr.fanstasygame.PlayerTeam;

import br.edu.utfpr.fanstasygame.Team.TeamModel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public interface PlayerTeamRepository extends JpaRepository<PlayerTeamModel, Long> {
    ArrayList<PlayerTeamModel> findAllPLayersByTeam(TeamModel team);

}
