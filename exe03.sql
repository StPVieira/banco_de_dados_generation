CREATE DATABASE db_escola;

USE db_escola;

SET SQL_SAFE_UPDATES = 0;

CREATE TABLE tb_alunos (
	id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    nome_mae VARCHAR(50),
	cpf VARCHAR(15),
    telefone VARCHAR(14),
    data_nascimento DATE,
    cep VARCHAR(9),
    notas DECIMAL(4,2)
);

INSERT INTO tb_alunos (nome, nome_mae, cpf, telefone, data_nascimento, cep, notas) 
VALUES
('João Silva', 'Maria Silva', '123.456.789-00', '(11)98765-4321', '2000-05-15', '12345-678', 8.75),
('Ana Souza', 'Luiza Souza', '234.567.890-11', '(11)91234-5678', '1998-11-23', '23456-789', 9.50),
('Carlos Almeida', 'Célia Almeida', '345.678.901-22', '(11)92345-6789', '2001-01-02', '34567-890', 7.80),
('Mariana Costa', 'Rita Costa', '456.789.012-33', '(11)93456-7890', '1999-06-17', '45678-901', 9.20),
('Lucas Pereira', 'Fernanda Pereira', '567.890.123-44', '(11)94567-8901', '2000-08-28', '56789-012', 6.90),
('Beatriz Lima', 'Patrícia Lima', '678.901.234-55', '(11)95678-9012', '2002-12-04', '67890-123', 6.10),
('Paulo Oliveira', 'Eliane Oliveira', '789.012.345-66', '(11)96789-0123', '2003-03-14', '78901-234', 7.95),
('Juliana Martins', 'Sônia Martins', '890.123.456-77', '(11)97890-1234', '1997-10-29', '89012-345', 8.60);

SELECT * FROM tb_alunos WHERE notas > 7;

SELECT * FROM tb_alunos WHERE notas < 7;

UPDATE tb_alunos
SET cep = "03726-050"
WHERE cpf = "123.456.789-00";