package br.edu.utfpr.fanstasygame.ProfessionalTeam;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProfessionalTeamRepository extends JpaRepository<ProfessionalTeamModel, Long> {
}
