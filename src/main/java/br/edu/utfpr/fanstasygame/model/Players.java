package br.edu.utfpr.fanstasygame.model;

import lombok.*;
import org.hibernate.annotations.Type;

import javax.persistence.*;
import java.util.List;
import java.util.UUID;

@Entity
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Players {

    @Id  @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String name;
    private String lastName;
    private String position;
    private String isIGL;
    private String age;

    @ManyToOne //atribuindo muitos jogadores para um time
    @JoinColumn(name = "professional_teams_ID")
    private ProfessionalTeams professionalTeam;

}
