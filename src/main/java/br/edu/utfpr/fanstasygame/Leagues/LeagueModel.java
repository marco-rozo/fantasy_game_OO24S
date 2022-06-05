package br.edu.utfpr.fanstasygame.Leagues;

import br.edu.utfpr.fanstasygame.Team.TeamModel;
import lombok.*;

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
@Table(name = "league")
public class LeagueModel {

    @Id  @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String name;

    @OneToMany(mappedBy = "league", cascade = CascadeType.ALL)
    private List<TeamModel> team;
    private LocalDateTime createdAt;
}
