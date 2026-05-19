DROP DATABASE db_rh;

CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
	cargo VARCHAR(255) NOT NULL,
	setor VARCHAR(255) NOT NULL,
	salario DECIMAL(8,2) NOT NULL,
	data_admissao DATE
);

INSERT INTO tb_colaboradores (nome, cargo, setor, salario, data_admissao)
VALUES ("Ana Souza", "Analista de RH", "Recursos Humanos", 2800.00, "2023-04-10");

INSERT INTO tb_colaboradores (nome, cargo, setor, salario, data_admissao)
VALUES ("Carlos Lima", "Assistente Administrativo", "Administrativo", 1800.00, "2024-01-15");

INSERT INTO tb_colaboradores (nome, cargo, setor, salario, data_admissao)
VALUES ("Mariana Costa", "Desenvolvedora Java", "Tecnologia", 4500.00, "2022-09-20");

INSERT INTO tb_colaboradores (nome, cargo, setor, salario, data_admissao)
VALUES ("João Pereira", "Auxiliar de Escritório", "Financeiro", 1600.00, "2024-03-05");

INSERT INTO tb_colaboradores (nome, cargo, setor, salario, data_admissao)
VALUES ("Beatriz Santos", "Coordenadora de RH", "Recursos Humanos", 5200.00, "2021-11-08");

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario > 2000.00;

SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

UPDATE tb_colaboradores
SET salario = 2100.00
WHERE id = 2;

SELECT * FROM tb_colaboradores;