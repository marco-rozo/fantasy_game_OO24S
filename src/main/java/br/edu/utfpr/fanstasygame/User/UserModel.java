package br.edu.utfpr.fanstasygame.User;

import br.edu.utfpr.fanstasygame.ProfessionalTeam.ProfessionalTeamModel;
import lombok.*;
import net.bytebuddy.implementation.bind.annotation.Default;
import org.hibernate.annotations.Type;
import org.springframework.boot.context.properties.bind.DefaultValue;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.UUID;

import static javax.persistence.GenerationType.AUTO;

@Entity
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Table(name = "`user`")
public class UserModel {

    @Id @GeneratedValue(strategy = AUTO) @Type(type = "uuid-char")
    private UUID id;

    private String name;
    private String lastName;
    private String email;
    private String password;
    private LocalDateTime createdAt;
}
