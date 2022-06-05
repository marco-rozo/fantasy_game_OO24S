package br.edu.utfpr.fanstasygame.ProfessionalTeam;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

@Service
@Slf4j //Para logs
public record ProfessionalTeamService(ProfessionalTeamRepository professionalTeamRepository) {

    public ProfessionalTeamModel save(ProfessionalTeamModel team){
        log.info("Saving professional team {}", team.getName());
        var teamSaved = professionalTeamRepository.saveAndFlush(team);

        return teamSaved;
    }
}
