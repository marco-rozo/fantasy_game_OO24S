package br.edu.utfpr.fanstasygame.Team;

import br.edu.utfpr.fanstasygame.User.UserModel;
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

}
