package br.edu.utfpr.fanstasygame.Player;

import br.edu.utfpr.fanstasygame.ProfessionalTeam.ProfessionalTeamModel;
import lombok.*;

import javax.persistence.*;

@Entity
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Table(name = "player")
public class PlayerModel {

    @Id  @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String nickName;
    private String name;
    private String lastName;
    private String position;
    private String isIGL;
    private String age;

    @ManyToOne //atribuindo muitos jogadores para um time
    @JoinColumn(name = "professional_team_id")
    private ProfessionalTeamModel professionalTeam;

}
