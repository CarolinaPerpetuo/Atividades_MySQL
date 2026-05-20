
CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	tipo VARCHAR(255) NOT NULL,
	ativo BOOLEAN,
	PRIMARY KEY (id)
);

CREATE TABLE tb_personagens (
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	nivel INT NOT NULL,
	poder_ataque INT NOT NULL,
	poder_defesa INT NOT NULL,
	classeid BIGINT,
	PRIMARY KEY (id),
	FOREIGN KEY (classeid) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (nome, tipo, ativo)
VALUES ("Guerreiro", "Combate corpo a corpo", true);

INSERT INTO tb_classes (nome, tipo, ativo)
VALUES ("Mago", "Ataque mágico", true);

INSERT INTO tb_classes (nome, tipo, ativo)
VALUES ("Arqueiro", "Ataque à distância", true);

INSERT INTO tb_classes (nome, tipo, ativo)
VALUES ("Clérigo", "Suporte e cura", true);

INSERT INTO tb_classes (nome, tipo, ativo)
VALUES ("Assassino", "Ataque rápido", true);

INSERT INTO tb_personagens (nome, nivel, poder_ataque, poder_defesa, classeid)
VALUES ("Arthas", 45, 2500, 1800, 1);

INSERT INTO tb_personagens (nome, nivel, poder_ataque, poder_defesa, classeid)
VALUES ("Morgana", 50, 3200, 1200, 2);

INSERT INTO tb_personagens (nome, nivel, poder_ataque, poder_defesa, classeid)
VALUES ("Cassandra", 38, 2100, 1500, 3);

INSERT INTO tb_personagens (nome, nivel, poder_ataque, poder_defesa, classeid)
VALUES ("Celeste", 42, 1800, 2000, 4);

INSERT INTO tb_personagens (nome, nivel, poder_ataque, poder_defesa, classeid)
VALUES ("Ragnar", 48, 2700, 2500, 1);

INSERT INTO tb_personagens (nome, nivel, poder_ataque, poder_defesa, classeid)
VALUES ("Luna", 35, 1600, 1100, 2);

INSERT INTO tb_personagens (nome, nivel, poder_ataque, poder_defesa, classeid)
VALUES ("Cael", 40, 2300, 1700, 5);

INSERT INTO tb_personagens (nome, nivel, poder_ataque, poder_defesa, classeid)
VALUES ("Thorin", 30, 1900, 900, 1);

SELECT * FROM tb_classes;

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens
WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens
WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens
WHERE nome LIKE "%c%";

SELECT tb_personagens.nome, tb_personagens.nivel, tb_personagens.poder_ataque, tb_personagens.poder_defesa, tb_classes.nome AS classe
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classeid = tb_classes.id;

SELECT tb_personagens.nome, tb_personagens.nivel, tb_personagens.poder_ataque, tb_personagens.poder_defesa, tb_classes.nome AS classe
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classeid = tb_classes.id
WHERE tb_classes.nome = "Arqueiro";