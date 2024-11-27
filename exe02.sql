CREATE DATABASE db_vapor;

USE db_vapor;

SET SQL_SAFE_UPDATES = 0;

CREATE TABLE tb_jogos (
	id_jogo INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    desenvolvedor VARCHAR(50),
    genero VARCHAR(50),
    preco DECIMAL(6,2)
);

INSERT INTO tb_jogos (nome, desenvolvedor, genero, preco)
VALUES 
("Among Us", "InnerSloth", "Social deduction game", "99.99"),
("Pokemon Legends: Arceus", "Gamefreak", "Aventura", "599.99"),
("The Last Of Us", "Naughty Dog", "Aventura", "199.99"),
("God of War", "Santa Monica Studio", "RPG", "399.99"),
("League Of Legends", "Riot Games", "MOBA", "0.00"),
("Grand Theft Auto VI", "Rockstar Games", "Ação", "599.99"),
("Assassins Creed: Nova Roma", "Ubisoft", "RPG", "299.90"),
("Outlast 3", "Red Barrels", "Terror", "259.90");

SELECT * FROM tb_jogos 



