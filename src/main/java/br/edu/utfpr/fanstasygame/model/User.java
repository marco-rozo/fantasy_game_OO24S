package br.edu.utfpr.fanstasygame.model;

import lombok.*;
import org.hibernate.annotations.Type;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import java.util.UUID;

import static javax.persistence.GenerationType.AUTO;

@Entity
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class User {

    @Id @GeneratedValue(strategy = AUTO) @Type(type = "uuid-char")
    private UUID id;

    private String name;
    private String lastName;
    private String email;
    private String password;
}
