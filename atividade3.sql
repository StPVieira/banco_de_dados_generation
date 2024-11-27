CREATE DATABASE db_cidade_dos_vegetais;

USE db_cidade_dos_vegetais;

CREATE TABLE tb_categorias (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
		tipo VARCHAR(50) NOT NULL,
        origem VARCHAR(25)
);

CREATE TABLE tb_produtos (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
		nome VARCHAR(30),
        preco DECIMAL(6,2),
		quantidade INT,
		validade DATE,
    categoriasid BIGINT,
    FOREIGN KEY (categoriasid) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (tipo, origem) VALUES
('Fruta', 'Local'),
('Legume', 'Local'),
('Folha', 'Local'),
('Raiz', 'Importado'),
('Erva', 'Importado'),
('Raiz', 'Local'),
('Erva', 'Local');

INSERT INTO tb_produtos (nome, preco, quantidade, validade, categoriasid) VALUES
('Maçã Fuji', 15.99, 100, '2024-12-15', 1),
('Banana Prata', 12.90, 150, '2024-12-10', 1),
('Laranja Bahia', 14.90, 120, '2024-12-12', 1),
('Abacaxi', 59.99, 50, '2024-12-20', 1),
('Batata Inglesa', 9.90, 200, '2025-01-10', 2),
('Cenoura Orgânica', 11.90, 180, '2025-01-12', 2),
('Beterraba', 9.90, 170, '2025-01-15', 2),
('Gengibre', 44.90, 60, '2025-03-01', 4),
('Alecrim Fresco', 34.90, 90, '2024-12-22', 6),
('Salsa', 24.90, 100, '2024-12-18', 6),
('Tomilho', 49.90, 70, '2025-01-05', 5),
('Alface Crespa', 7.90, 200, '2024-12-08', 3),
('Rúcula', 9.90, 180, '2024-12-09', 3),
('Couve Manteiga', 11.90, 150, '2024-12-12', 3),
('Espinafre', 24.90, 100, '2024-12-15', 3),
('Cebolinha', 14.90, 120, '2024-12-16', 6),
('Salsão', 17.90, 80, '2024-12-20', 6),
('Uva Verde', 64.90, 50, '2024-12-25', 1),
('Melancia', 11.90, 200, '2024-12-20', 1),
('Maracujá', 17.90, 100, '2024-12-18', 1),
('Limão Siciliano', 44.90, 90, '2024-12-28', 1),
('Batata-doce', 9.90, 150, '2025-01-15', 2),
('Alho', 84.90, 60, '2025-02-01', 4),
('Cebola Roxa', 17.90, 100, '2025-01-12', 2),
('Orégano Fresco', 34.90, 80, '2025-01-10', 6),
('Pimentão Vermelho', 21.90, 150, '2024-12-15', 2),
('Abobrinha Italiana', 19.90, 140, '2024-12-20', 2),
('Berinjela', 24.90, 130, '2024-12-18', 2),
('Cogumelo Shitake', 79.90, 70, '2024-12-25', 4);


SELECT * FROM tb_produtos WHERE preco > 50;

SELECT * FROM tb_produtos WHERE preco  BETWEEN 50 AND 150;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT nome, preco, quantidade, validade, tb_categorias.tipo, tb_categorias.origem
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriasid = tb_categorias.id;

SELECT nome, preco, quantidade, validade, tb_categorias.tipo, tb_categorias.origem
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriasid = tb_categorias.id
WHERE tb_categorias.tipo = "raiz";



