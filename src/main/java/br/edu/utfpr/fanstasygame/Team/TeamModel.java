package br.edu.utfpr.fanstasygame.Team;

import br.edu.utfpr.fanstasygame.Player.PlayerModel;
import br.edu.utfpr.fanstasygame.User.UserModel;
import br.edu.utfpr.fanstasygame.Leagues.LeagueModel;
import lombok.*;
import org.springframework.data.annotation.LastModifiedDate;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.List;

@Entity
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Table(name = "team")
public class TeamModel {

    @Id  @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String name;

    @OneToOne
    private UserModel user;

    private LocalDateTime createdAt;

    @ManyToOne //atribuindo muitos times para uma liga
    @JoinColumn(name = "league_id")
    private LeagueModel league;

    @ManyToMany
    private List<PlayerModel> players;

}
