-- Active: 1734684954916@@127.0.0.1@3306@myapp
CREATE Table nationality (
    id_n int AUTO_INCREMENT PRIMARY KEY,
    nationality VARCHAR(50),
    flag VARCHAR(300)
);

INSERT INTO nationality VALUES(null, "Slovenia", "https://cdn.sofifa.net/flags/si.png");


SELECT * FROM nationality;
CREATE Table club (
    id_c int AUTO_INCREMENT PRIMARY KEY,
    club VARCHAR(50),
    logo VARCHAR(300)
);

INSERT INTO club VALUES(null, "Atletico Madrid", "https://cdn.sofifa.net/meta/team/7980/120.png");
SELECT * FROM club;

CREATE Table players_income_infos (
    id_player_income_infos int PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    photo VARCHAR(300),
    position VARCHAR(4),
    rating int,
    id_nationality int,
    Foreign Key (id_nationality) REFERENCES nationality(id_n),
    id_club int,
    Foreign Key (id_club) REFERENCES club(id_c)
);


create TABLE attack_players (
    id_attack int,
    Foreign Key (id_attack) REFERENCES players_income_infos(id_player_income_infos),
    pace int,
    shooting int,
    passing int,
    dribbling int,
    defending int,
    physical int
);
INSERT INTO attack_players VALUES(6, 85, 92, 91, 95, 35, 65);
CREATE Table goal_keepers (
    id_goal_plaer int,
    Foreign Key (id_goal_plaer) REFERENCES players_income_infos(id_player_income_infos),
    diving int,
    handling int,
    kicking INT,
    reflexes int,
    speed int,
    positioning int
);

insert INTO goal_keepers VALUES(7,89, 90, 78, 92, 50, 88);
insert into players_income_infos
VALUES (null, "Lionel Messi", "https://cdn.sofifa.net/players/158/023/25_120.png", "RW", 93, 1, 1),
(null, "Jan Oblak", "https://cdn.sofifa.net/players/200/389/25_120.png", "GK", 91,2, 2);


SELECT * from players_income_infos;

show TABLEs;
SELECT * FROM players_income_infos;
SELECT * FROM attack_players;

select * FROM goal_keepers;

SELECT * from players_income_infos pi, attack_players ap, club c, nationality n WHERE pi.id_player_income_infos = ap.id_attack and c.id_c = pi.id_club and n.id_n = pi.id_nationality;
SELECT * flag from players_income_infos pi, goal_keepers gk, club c, nationality n WHERE pi.id_player_income_infos = gk.id_goal_plaer and c.id_c = pi.id_club and n.id_n = pi.id_nationality;

SELECT * from club;
SELECT * FROM nationality;

SELECT * FROM attack_players;

SELECT * FROM goal_keepers;

SELECT * FROM players_income_infos;
