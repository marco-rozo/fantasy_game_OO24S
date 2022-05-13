package br.edu.utfpr.fanstasygame.model;

import lombok.*;

import javax.persistence.*;

@Entity
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Player {

    @Id  @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String name;
    private String lastName;
    private String position;
    private String isIGL;
    private String age;

    @ManyToOne //atribuindo muitos jogadores para um time
    @JoinColumn(name = "professional_team_ID")
    private ProfessionalTeam professionalTeam;

}
