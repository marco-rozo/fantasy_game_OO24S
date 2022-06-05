package br.edu.utfpr.fanstasygame.RankingLeague;

import br.edu.utfpr.fanstasygame.Leagues.LeagueModel;
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
@Table(name = "ranking_league")
public class RankingLeagueModel {

    @Id  @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private Integer numberOfTeams;
    private LocalDateTime createdAt;
    private Double totalPoints;

    //! Relacionar com ligas (???)
    @OneToOne
    private LeagueModel league;

}
