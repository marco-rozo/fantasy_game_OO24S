package br.edu.utfpr.fanstasygame.model;

import javax.persistence.*;
import java.util.List;

@Entity
public class ProfessionalTeam {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String name;

    @OneToMany(mappedBy = "professionalTeam", cascade = CascadeType.ALL)
    private List<Player> players;
}
