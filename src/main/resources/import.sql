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
INSERT INTO "championship"(id, name) VALUES (1, 'PGL Major Antwerp 2022 - Legends match');

--INSERINDO RODADAS
INSERT INTO "round" (id,championship_id) VALUES (1, 1);
INSERT INTO "round" (id,championship_id) VALUES (2, 1);
INSERT INTO "round" (id,championship_id) VALUES (3, 1);

--INSERINDO PARTIDAS DO MAJOR
INSERT INTO "match"(id, occurred_at, round_id, teama_id, teamb_id) VALUES (1, '2022-05-19 13:00:00', 1, 2, 8); --FURIA X SPIRIT
INSERT INTO "match"(id, occurred_at, round_id, teama_id, teamb_id) VALUES (2, '2022-05-19 16:00:00', 1, 3, 6); --FAZE X NIP
INSERT INTO "match"(id, occurred_at, round_id, teama_id, teamb_id) VALUES (3, '2022-05-20 13:00:00', 1, 10, 7); --CPH FLAMES X ENCE
INSERT INTO "match"(id, occurred_at, round_id, teama_id, teamb_id) VALUES (4, '2022-05-20 16:00:00', 1, 9, 5); --HEROIC X NAVI
INSERT INTO "match"(id, occurred_at, round_id, teama_id, teamb_id) VALUES (5, '2022-05-21 13:00:00', 2, 7, 5); --ENCE X NAVI
INSERT INTO "match"(id, occurred_at, round_id, teama_id, teamb_id) VALUES (6, '2022-05-21 16:00:00', 2, 3, 8); --FAZE X SPIRIT
INSERT INTO "match"(id, occurred_at, round_id, teama_id, teamb_id) VALUES (7, '2022-05-21 16:00:00', 3, 3, 5); --FAZE X NAVI

--INSERINDO PERFORMANCE DOS JOGADORES
--FURIA
INSERT INTO "performance_per_round"(id, round_id, player_id, adr, assists, death, kast, kill, hs, rating) VALUES (1, 1, 6, 66.1, 6, 38, 71.2, 31, 16, 0.94); --arT
INSERT INTO "performance_per_round"(id, round_id, player_id, adr, assists, death, kast, kill, hs, rating) VALUES (2, 1, 7, 78.1, 10, 35, 71.2, 33, 15, 0.94); --yuurih
INSERT INTO "performance_per_round"(id, round_id, player_id, adr, assists, death, kast, kill, hs, rating) VALUES (3, 1, 8, 58.3, 8, 36, 51.9, 20, 9, 0.65); --KSC
INSERT INTO "performance_per_round"(id, round_id, player_id, adr, assists, death, kast, kill, hs, rating) VALUES (4, 1, 9, 51.8, 8, 36, 55.8, 24, 11, 0.75); --drop
INSERT INTO "performance_per_round"(id, round_id, player_id, adr, assists, death, kast, kill, hs, rating) VALUES (5, 1, 10, 71.2, 11, 38, 61.5, 37, 7, 0.99); --saffee
--Spirit
INSERT INTO "performance_per_round"(id, round_id, player_id, adr, assists, death, kast, kill, hs, rating) VALUES (6, 1, 36, 72.4, 7, 23, 73.1, 38, 14, 1.29); --degster
INSERT INTO "performance_per_round"(id, round_id, player_id, adr, assists, death, kast, kill, hs, rating) VALUES (7, 1, 37, 73.2, 12, 29, 71.2, 32, 14, 1.11); --chopper
INSERT INTO "performance_per_round"(id, round_id, player_id, adr, assists, death, kast, kill, hs, rating) VALUES (8, 1, 38, 66.0, 5, 29, 71.2, 33, 15, 1.09); --magixx
INSERT INTO "performance_per_round"(id, round_id, player_id, adr, assists, death, kast, kill, hs, rating) VALUES (9, 1, 39, 92.2, 12, 32, 73.1, 42, 22, 1.32); --s1ren
INSERT INTO "performance_per_round"(id, round_id, player_id, adr, assists, death, kast, kill, hs, rating) VALUES (10, 1, 70, 78.1, 8, 33, 65.4, 33, 16, 1.05); --Pasti
--NIP
INSERT INTO "performance_per_round"(id, round_id, player_id, adr, assists, death, kast, kill, hs, rating) VALUES (11, 1, 26, 60.4, 16, 47, 63.3, 44, 14, 0.88); --es3tag
INSERT INTO "performance_per_round"(id, round_id, player_id, adr, assists, death, kast, kill, hs, rating) VALUES (12, 1, 27, 66.0, 14, 48, 70.9, 45, 23, 0.97); --REZ
INSERT INTO "performance_per_round"(id, round_id, player_id, adr, assists, death, kast, kill, hs, rating) VALUES (13, 1, 28, 82.6, 17, 54, 73.4, 64, 30, 1.14); --hampus
INSERT INTO "performance_per_round"(id, round_id, player_id, adr, assists, death, kast, kill, hs, rating) VALUES (14, 1, 29, 77.7, 12, 58, 63.3, 57, 31, 1.03); --Brollan
INSERT INTO "performance_per_round"(id, round_id, player_id, adr, assists, death, kast, kill, hs, rating) VALUES (15, 1, 30, 60.7, 17, 54, 69.6, 38, 11, 0.83); --Plopski
--Faze
INSERT INTO "performance_per_round"(id, round_id, player_id, adr, assists, death, kast, kill, hs, rating) VALUES (16, 1, 11, 66.6, 10, 56, 64.6, 47, 20, 0.90); --KarrigaN
INSERT INTO "performance_per_round"(id, round_id, player_id, adr, assists, death, kast, kill, hs, rating) VALUES (17, 1, 12, 77.7, 13, 48, 75.9, 61, 34, 1.17); --ropz
INSERT INTO "performance_per_round"(id, round_id, player_id, adr, assists, death, kast, kill, hs, rating) VALUES (18, 1, 13, 77.1, 14, 51, 72.2, 53, 34, 1.07); --Twistzz
INSERT INTO "performance_per_round"(id, round_id, player_id, adr, assists, death, kast, kill, hs, rating) VALUES (19, 1, 14, 75.9, 13, 53, 63.3, 58, 22, 1.05); --rain
INSERT INTO "performance_per_round"(id, round_id, player_id, adr, assists, death, kast, kill, hs, rating) VALUES (20, 1, 15, 68.7, 10, 42, 67.1, 52, 10, 1.05); --broky