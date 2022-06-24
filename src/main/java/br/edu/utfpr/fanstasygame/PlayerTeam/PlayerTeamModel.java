package br.edu.utfpr.fanstasygame.PlayerTeam;

import br.edu.utfpr.fanstasygame.Player.PlayerModel;
import br.edu.utfpr.fanstasygame.Team.TeamModel;
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
@Table(name = "player_team")
public class PlayerTeamModel {

    @Id  @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;


    @ManyToOne @Getter
    private PlayerModel player;

    @ManyToOne @Getter
    private TeamModel team;

    private LocalDateTime at;

}
