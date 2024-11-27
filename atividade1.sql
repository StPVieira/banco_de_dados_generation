CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
	classid BIGINT AUTO_INCREMENT PRIMARY KEY,
		titulo VARCHAR(255) NOT NULL,
        categoria VARCHAR(255)
);

CREATE TABLE tb_personagens(
	generationid BIGINT AUTO_INCREMENT PRIMARY KEY,
		nome VARCHAR(255) NOT NULL,
        atk INT,
        def INT,
        spd INT,
        hp INT,
        mp INT,
	classid BIGINT,
	FOREIGN KEY (classid) REFERENCES tb_classes (classid)
);

INSERT INTO tb_classes (titulo, categoria) VALUES
('Guerreiro', 'Combate Corpo a Corpo'),
('Mago', 'Magia e Feitiços'),
('Arqueiro', 'Ataque à Distância'),
('Clérigo', 'Suporte e Cura'),
('Ladino', 'Furtividade e Destreza');

INSERT INTO tb_personagens (nome, atk, def, spd, hp, mp, classid) VALUES
('Arthas', 2400, 1800, 40, 200, 20, 1),
('Merlin', 900, 600, 50, 100, 150, 2),
('Legolas', 2100, 1200, 80, 150, 30, 3),
('Elowen', 1200, 1500, 30, 180, 80, 4),
('Shadow', 1800, 900, 90, 120, 10, 5),
('Durin', 2700, 2100, 20, 250, 0, 1),
('Selene', 1500, 900, 60, 140, 120, 2),
('Kael', 1950, 1350, 70, 160, 25, 3);

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE atk > 2000;

SELECT * FROM tb_personagens WHERE atk BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT nome, atk, def, spd, hp, mp, tb_classes.titulo
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.generationid = tb_classes.classid;

SELECT nome, atk, def, spd, hp, mp, tb_classes.titulo
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.generationid = tb_classes.classid
WHERE tb_classes.titulo = "Guerreiro";







        
	