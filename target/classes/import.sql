-- INSERINDO USUÁRIO
INSERT INTO "user" (id,email,name,last_name,password) VALUES (1, 'marco@gmail.com', 'marco', 'rozo', '123');
INSERT INTO "user" (id,email,name,last_name,password) VALUES (2, 'may@gmail.com', 'may', 'willem', '123');

-- INSERINDO TIMES PROFISSIONAIS
INSERT INTO "professional_team" (id,name) VALUES (1, 'Imperial');
INSERT INTO "professional_team" (id,name) VALUES (2, 'Furia');
INSERT INTO "professional_team" (id,name) VALUES (3, 'Faze');

--INSERINDO JOGADORES PROFISSIONAIS
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (1, 'Fallen', 1, true);
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (2, 'Fer', 1, false);
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (3, 'VINI', 1, false);
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (4, 'fnx', 1, false);
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (5, 'boltz', 1, false);
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (6, 'art', 2, true);
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (7, 'yuurih', 2, false);
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (8, 'KSCERATO', 2, false);
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (9, 'drop', 2, false);
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (10, 'saffee', 2, false);
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (11, 'KarrigaN', 3, true);
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (12, 'ropz', 3, false);
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (13, 'Twistzz', 3, false);
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (14, 'rain', 3, false);
INSERT INTO "player" (id,nick_name, professional_team_id, isigl) VALUES (15, 'broky', 3, false);

-- CRIANDO TIME
-- INSERT INTO "team" (id, name , user_id, created_at) VALUES (1, 'HRomeuPowerGuido', 1, created_at);
