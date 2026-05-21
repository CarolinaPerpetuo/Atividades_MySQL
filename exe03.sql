CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
id BIGINT AUTO_INCREMENT,
categoria VARCHAR(255) NOT NULL,
descricao VARCHAR(255) NOT NULL,
ativo BOOLEAN,
PRIMARY KEY (id)
);

CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
preco DEC(8,2) NOT NULL,
marca VARCHAR(255) NOT NULL,
estoque INT NOT NULL,
categoriaid BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (categoria, descricao, ativo)
VALUES ("Medicamentos", "Remédios e produtos farmacêuticos", true);

INSERT INTO tb_categorias (categoria, descricao, ativo)
VALUES ("Cosméticos", "Produtos de beleza e cuidados pessoais", true);

INSERT INTO tb_categorias (categoria, descricao, ativo)
VALUES ("Higiene", "Produtos de higiene pessoal", true);

INSERT INTO tb_categorias (categoria, descricao, ativo)
VALUES ("Vitaminas", "Suplementos vitamínicos", true);

INSERT INTO tb_categorias (categoria, descricao, ativo)
VALUES ("Infantil", "Produtos para bebês e crianças", true);

INSERT INTO tb_produtos (nome, preco, marca, estoque, categoriaid)
VALUES ("Dipirona", 12.50, "Medley", 100, 1);

INSERT INTO tb_produtos (nome, preco, marca, estoque, categoriaid)
VALUES ("Protetor Solar", 65.90, "Nivea", 40, 2);

INSERT INTO tb_produtos (nome, preco, marca, estoque, categoriaid)
VALUES ("Creme Hidratante", 45.00, "Dove", 60, 2);

INSERT INTO tb_produtos (nome, preco, marca, estoque, categoriaid)
VALUES ("Escova Dental", 8.90, "Colgate", 120, 3);

INSERT INTO tb_produtos (nome, preco, marca, estoque, categoriaid)
VALUES ("Vitamina C", 35.50, "Cimed", 80, 4);

INSERT INTO tb_produtos (nome, preco, marca, estoque, categoriaid)
VALUES ("Fralda Infantil", 72.00, "Pampers", 30, 5);

INSERT INTO tb_produtos (nome, preco, marca, estoque, categoriaid)
VALUES ("Shampoo Infantil", 28.90, "Johnson", 50, 5);

INSERT INTO tb_produtos (nome, preco, marca, estoque, categoriaid)
VALUES ("Condicionador", 32.90, "Pantene", 45, 3);

SELECT * FROM tb_categorias;

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos
WHERE preco > 50;

SELECT * FROM tb_produtos
WHERE preco BETWEEN 5 AND 60;

SELECT * FROM tb_produtos
WHERE nome LIKE "%c%";

SELECT tb_produtos.nome,
tb_produtos.preco,
tb_produtos.marca,
tb_categorias.categoria
FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id;

SELECT tb_produtos.nome,
tb_produtos.preco,
tb_produtos.marca,
tb_categorias.categoria
FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id
WHERE tb_categorias.categoria = "Cosméticos";

