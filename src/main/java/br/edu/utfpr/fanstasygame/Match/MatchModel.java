package br.edu.utfpr.fanstasygame.Match;

import br.edu.utfpr.fanstasygame.ProfessionalTeam.ProfessionalTeamModel;
import br.edu.utfpr.fanstasygame.Round.RoundModel;
import lombok.*;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Table(name = "match")
public class MatchModel {

    @Id  @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @OneToOne
    private RoundModel round;

    @OneToOne
    private ProfessionalTeamModel teamA;
    @OneToOne
    private ProfessionalTeamModel teamB;
    /*
    * Resultado da partida?
    * Vencedor?
    * */

    private LocalDateTime createdAt;
    private LocalDateTime occurredAt;

}
