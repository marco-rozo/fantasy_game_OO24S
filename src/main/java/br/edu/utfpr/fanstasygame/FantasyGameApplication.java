package br.edu.utfpr.fanstasygame;

import br.edu.utfpr.fanstasygame.Team.TeamModel;
import br.edu.utfpr.fanstasygame.Team.TeamRepository;
import br.edu.utfpr.fanstasygame.Team.TeamService;
import br.edu.utfpr.fanstasygame.User.UserModel;
import br.edu.utfpr.fanstasygame.User.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.event.ApplicationReadyEvent;
import org.springframework.context.event.EventListener;

import java.time.LocalDateTime;

@SpringBootApplication
public class FantasyGameApplication {
    @Autowired
    private TeamService teamService;
    @Autowired
    private UserRepository userRepository;
    public static void main(String[] args) {
        SpringApplication.run(FantasyGameApplication.class, args);
    }

    @EventListener(ApplicationReadyEvent.class)
    public void doSomethingAfterStartup() {
        var user = userRepository.saveAndFlush(UserModel.builder()
                        .name("Marco")
                        .lastName("Rozo")
                        .createdAt(LocalDateTime.now())
                        .email("marcorozo@gmail.com")
                        .password("123123123")
                        .build()
        );

        teamService.createTeam(TeamModel.builder()
                .name("HRomeuPowerGuido")
                .createdAt(LocalDateTime.now())
                .user(user)
                .build());
    }

}
