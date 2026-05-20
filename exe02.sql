
CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
	id BIGINT AUTO_INCREMENT,
	categoria VARCHAR(255) NOT NULL,
	descricao VARCHAR(255) NOT NULL,
	ativo BOOLEAN,
	PRIMARY KEY (id)
);

CREATE TABLE tb_pizzas (
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	preco DECIMAL(8,2) NOT NULL,
	tamanho VARCHAR(255) NOT NULL,
	massa VARCHAR(255) NOT NULL,
	categoriaid BIGINT,
	PRIMARY KEY (id),
	FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id)
);


INSERT INTO tb_categorias (categoria, descricao, ativo)
VALUES ("Tradicional", "Pizzas clássicas", true);

INSERT INTO tb_categorias (categoria, descricao, ativo)
VALUES ("Doce", "Pizzas doces", true);

INSERT INTO tb_categorias (categoria, descricao, ativo)
VALUES ("Premium", "Ingredientes especiais", true);

INSERT INTO tb_categorias (categoria, descricao, ativo)
VALUES ("Vegetariana", "Sem carne", true);

INSERT INTO tb_categorias (categoria, descricao, ativo)
VALUES ("Especial", "Sabores exclusivos", true);


INSERT INTO tb_pizzas (nome, preco, tamanho, massa, categoriaid)
VALUES ("Calabresa", 49.90, "Grande", "Tradicional", 1);

INSERT INTO tb_pizzas (nome, preco, tamanho, massa, categoriaid)
VALUES ("Mussarela", 42.90, "Média", "Tradicional", 1);

INSERT INTO tb_pizzas (nome, preco, tamanho, massa, categoriaid)
VALUES ("Chocolate", 58.00, "Grande", "Tradicional", 2);

INSERT INTO tb_pizzas (nome, preco, tamanho, massa, categoriaid)
VALUES ("Frango com Catupiry", 54.90, "Grande", "Pan", 3);

INSERT INTO tb_pizzas (nome, preco, tamanho, massa, categoriaid)
VALUES ("Margherita", 47.00, "Média", "Integral", 4);

INSERT INTO tb_pizzas (nome, preco, tamanho, massa, categoriaid)
VALUES ("Morango com Chocolate", 69.90, "Grande", "Tradicional", 2);

INSERT INTO tb_pizzas (nome, preco, tamanho, massa, categoriaid)
VALUES ("Portuguesa", 52.90, "Grande", "Tradicional", 1);

INSERT INTO tb_pizzas (nome, preco, tamanho, massa, categoriaid)
VALUES ("Mexicana", 63.90, "Grande", "Pan", 5);


SELECT * FROM tb_categorias;

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas
WHERE preco > 45;

SELECT * FROM tb_pizzas
WHERE preco BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas
WHERE nome LIKE "%m%";

SELECT tb_pizzas.nome,
tb_pizzas.preco,
tb_pizzas.tamanho,
tb_categorias.categoria
FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_pizzas.categoriaid = tb_categorias.id;

SELECT tb_pizzas.nome,
tb_pizzas.preco,
tb_categorias.categoria
FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_pizzas.categoriaid = tb_categorias.id
WHERE tb_categorias.categoria = "Doce";


