package br.edu.utfpr.fanstasygame.ProfessionalTeam;

import br.edu.utfpr.fanstasygame.Player.PlayerModel;
import lombok.*;

import javax.persistence.*;
import java.util.List;

@Entity
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "professional_team")
public class ProfessionalTeamModel {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String name;

    @OneToMany(mappedBy = "professionalTeam", cascade = CascadeType.ALL)
    private List<PlayerModel> players;
}
