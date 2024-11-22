CREATE DATABASE db_colaboradores;

USE db_colaboradores;

CREATE TABLE tb_funcionarios (
	id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50),
    departamento VARCHAR(50),
    salario DECIMAL(6,2)
);

INSERT INTO tb_funcionarios (nome, cargo, departamento, salario)
VALUES 
("Raquel Vieira", "Gerente de Operações", "TI", "9000.95"),
("Julia Pinheiro", "Tech Lead", "TI", "8000.00"),
("Vinicius Souza", "Dev Senior", "TI", "7000.00"),
("Aline Ferreira", "Dev Pleno", "TI", "5000.00"),
("Pedro Vieira", "Dev Junior", "TI", "3000.00");

SELECT * FROM tb_funcionarios WHERE salario > 2000;

SELECT * FROM tb_funcionarios WHERE salario < 2000;

SET SQL_SAFE_UPDATES = 0;

UPDATE tb_funcionarios 
SET salario = salario * 1.1 
WHERE departamento = "TI";

UPDATE tb_funcionarios 
SET salario = 3500.00 
WHERE salario < 4000;