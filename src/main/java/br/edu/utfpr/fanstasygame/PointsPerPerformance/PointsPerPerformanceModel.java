package br.edu.utfpr.fanstasygame.PointsPerPerformance;

import br.edu.utfpr.fanstasygame.PerformancePerRound.PerformancePerRoundModel;
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
@Table(name = "points_per_performance")
public class PointsPerPerformanceModel {

    @Id  @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @OneToOne
    private PerformancePerRoundModel performance;

    private Double killPoints;
    private Double hsPoints;
    private Double deathPoints;
    private Double assistsPoints;
    private Double kastPoints;
    private Double ratingPoints;
    private Double adrPoints;
    private Double totalPoints;

    private LocalDateTime createdAt;

}
