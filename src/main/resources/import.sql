-- INSERINDO USUÁRIO
INSERT INTO "user" (id,email,name,last_name,password) VALUES (1, 'marco@gmail.com', 'marco', 'rozo', '123');
INSERT INTO "user" (id,email,name,last_name,password) VALUES (2, 'may@gmail.com', 'may', 'willem', '123');

-- INSERINDO TIMES PROFISSIONAIS
INSERT INTO "professional_team" (id,name) VALUES (1, 'Imperial');
INSERT INTO "professional_team" (id,name) VALUES (2, 'Furia');
INSERT INTO "professional_team" (id,name) VALUES (3, 'Faze');
INSERT INTO "professional_team" (id,name) VALUES (4, 'Cloud9');
INSERT INTO "professional_team" (id,name) VALUES (5, 'Natus Vincere');
INSERT INTO "professional_team" (id,name) VALUES (6, 'NIP');
INSERT INTO "professional_team" (id,name) VALUES (7, 'ENCE');
INSERT INTO "professional_team" (id,name) VALUES (8, 'Spirit');
INSERT INTO "professional_team" (id,name) VALUES (9, 'Heroic');
INSERT INTO "professional_team" (id,name) VALUES (10, 'Copenhagen Flames');
INSERT INTO "professional_team" (id,name) VALUES (11, 'G2');

--INSERINDO JOGADORES PROFISSIONAIS
--Imperial
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (1, 'Fallen', 1, true);
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (2, 'Fer', 1, false);
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (3, 'VINI', 1, false);
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (4, 'fnx', 1, false);
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (5, 'boltz', 1, false);
--FURIA
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (6, 'art', 2, true);
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (7, 'yuurih', 2, false);
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (8, 'KSCERATO', 2, false);
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (9, 'drop', 2, false);
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (10, 'saffee', 2, false);
--FaZe
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (11, 'KarrigaN', 3, true);
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (12, 'ropz', 3, false);
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (13, 'Twistzz', 3, false);
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (14, 'rain', 3, false);
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (15, 'broky', 3, false);
--CLOUD9
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (16, 'HObbit', 4, true);
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (17, 'interz', 4, false);
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (18, 'nafany', 4, false);
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (19, 'Ax1le', 4, false);
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (20, 'sh1ro', 4, false);
--NaVi
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (21, 's1mple', 5, false);
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (22, 'boombla', 5, true);
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (23, 'electroNic', 5, false);
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (24, 'b1t', 5, false);
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (25, 'perfecto', 5, false);
--NIP
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (26, 'es3tag', 6, false);
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (27, 'REZ', 6, false);
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (28, 'hampus', 6, false);
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (29, 'Brollan', 6, false);
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (30, 'Plopski', 6, true);
--ENCE
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (31, 'Snappi', 7, false);
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (32, 'Maden', 7, false);
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (33, 'dycha', 7, false);
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (34, 'hades', 7, false);
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (35, 'spinx', 7, false);
--Spirit
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (36, 'degster', 8, false);
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (37, 'chopper', 8, true);
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (38, 'magixx', 8, false);
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (39, 's1ren', 8, false);
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (40, 'Patsi', 8, false);
--Heroic
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (41, 'cadiaN', 9, true);
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (42, 'refrezh', 9, false);
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (43, 'stavn', 9, false);
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (44, 'TeSeS', 9, false);
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (45, 'sjuush', 9, false);
--Copenhagen Flames
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (46, 'HooXi', 10, true);
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (47, 'nocoodoz', 10, false);
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (48, 'roej', 10, false);
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (49, 'jabbi', 10, false);
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (50, 'Zyphon', 10, false);
--G2
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (51, 'NiKo', 11, false);
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (52, 'JACKZ', 11, false);
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (53, 'huNter', 11, false);
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (54, 'Aleksib', 11, true);
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (55, 'mONESY', 11, false);

--INSERINDO CAMPEONATO
INSERT INTO "championship"(id, name) VALUES (1, 'PGL Major Antwerp 2022');

--INSERINDO RODADAS
INSERT INTO "round" (id,championship_id) VALUES (1, 1);
