package br.edu.utfpr.fanstasygame.PerformancePerRound;

import br.edu.utfpr.fanstasygame.Player.PlayerModel;
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
@Table(name = "performance_per_round")
public class PerformancePerRoundModel {

    @Id  @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @OneToOne
    private RoundModel round;

    @OneToOne
    private PlayerModel player;

    private Integer kill;
    private Integer hs;
    private Integer death;
    private Integer assists;
    private Double kast; //Porcentagem de rodadas em que o jogador matou, assistiu, sobreviveu ou foi negociado
    private Double rating;
    private Double adr; //Dano médio por rodada

    private LocalDateTime createdAt;

}
