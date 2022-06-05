package br.edu.utfpr.fanstasygame.Round;

import br.edu.utfpr.fanstasygame.Championship.ChampionshipModel;
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
@Table(name = "round")
public class RoundModel {

    @Id  @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String name;
    @OneToOne
    private ChampionshipModel championship;

    private LocalDateTime createdAt;
    private LocalDateTime occurredAt;
}
