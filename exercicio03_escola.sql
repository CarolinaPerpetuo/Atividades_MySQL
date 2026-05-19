CREATE DATABASE db_escola;

USE db_escola;


CREATE TABLE tb_estudantes (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
	turma VARCHAR(50) NOT NULL,
	idade INT NOT NULL,
	nota DECIMAL(3,1) NOT NULL,
	responsavel VARCHAR(255) NOT NULL
);

INSERT INTO tb_estudantes (nome, turma, idade, nota, responsavel)
VALUES ("Ana Souza", "8A", 13, 8.5, "Marcos Souza");

INSERT INTO tb_estudantes (nome, turma, idade, nota, responsavel)
VALUES ("Carlos Lima", "8B", 14, 6.5, "Fernanda Lima");

INSERT INTO tb_estudantes (nome, turma, idade, nota, responsavel)
VALUES ("Mariana Costa", "9A", 14, 9.0, "Juliana Costa");

INSERT INTO tb_estudantes (nome, turma, idade, nota, responsavel)
VALUES ("João Pereira", "7C", 12, 5.8, "Paulo Pereira");

INSERT INTO tb_estudantes (nome, turma, idade, nota, responsavel)
VALUES ("Beatriz Santos", "9B", 15, 7.5, "Renata Santos");

INSERT INTO tb_estudantes (nome, turma, idade, nota, responsavel)
VALUES ("Lucas Almeida", "8A", 13, 6.9, "Roberto Almeida");

INSERT INTO tb_estudantes (nome, turma, idade, nota, responsavel)
VALUES ("Camila Rocha", "7B", 12, 8.0, "Patrícia Rocha");

INSERT INTO tb_estudantes (nome, turma, idade, nota, responsavel)
VALUES ("Rafael Martins", "9C", 15, 4.5, "Sandra Martins");

SELECT * FROM tb_estudantes;

SELECT * FROM tb_estudantes WHERE nota > 7.0;

SELECT * FROM tb_estudantes WHERE nota < 7.0;

UPDATE tb_estudantes
SET nota = 7.2
WHERE id = 2;

SELECT * FROM tb_estudantes;