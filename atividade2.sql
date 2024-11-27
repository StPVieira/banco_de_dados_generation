CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
	id INT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(7),
    dieta VARCHAR(20)
);

CREATE TABLE tb_pizzas (
	id INT AUTO_INCREMENT PRIMARY KEY,
		nome VARCHAR(50),
		preco DECIMAL(6,2),
		ingredientes VARCHAR(255),
		tamanho VARCHAR(7),
	categoriasid INT,
    FOREIGN KEY (categoriasid) REFERENCES tb_categorias (id)
);

INSERT INTO tb_categorias (tipo, dieta) VALUES
('Doce', 'Sem Restrição'),
('Doce', 'Vegetariana'),
('Doce', 'Vegana'),
('Salgada', 'Sem Restrição'),
('Salgada', 'Vegetariana'),
('Salgada', 'Vegana');

INSERT INTO tb_pizzas (nome, preco, ingredientes, tamanho, categoriasid) VALUES
('Chocolate Fantasy', 51.00, 'Chocolate, Massa doce, Açúcar', 'Média', 1),  
('Morango Delícia', 43.00, 'Massa doce, Morangos frescos, Creme', 'Pequena', 2),  
('Frango Supremo', 59.00, 'Frango, Catupiry, Queijo, Molho de tomate', 'Grande', 4),  
('Vegetal Viva', 48.00, 'Cogumelos, Pimentões, Abobrinha, Tomate', 'Média', 5),  
('Margherita Clássica', 55.00, 'Mussarela, Molho de tomate, Manjericão', 'Grande', 4), 
('Verde Pesto', 52.00, 'Pesto, Tomate seco, Queijo, Manjericão', 'Média', 5), 
('Calabresa Max', 54.00, 'Calabresa, Queijo, Molho de tomate, Azeitonas', 'Média', 4),  
('Jardim Vegano', 50.00, 'Berinjela, Abobrinha, Tomate, Pimentão, Molho pesto vegano', 'Média', 6); 

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco > 45;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

SELECT nome, ingredientes, tamanho, preco, tb_categorias.tipo, tb_categorias.dieta 
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoriasid = tb_categorias.id;

SELECT nome, ingredientes, tamanho, preco, tb_categorias.tipo, tb_categorias.dieta 
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoriasid = tb_categorias.id
WHERE tb_categorias.tipo = "doce";

