CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
	categoria VARCHAR(255) NOT NULL,
	marca VARCHAR(255) NOT NULL,
	preco DECIMAL(8,2) NOT NULL,
	quantidade INT NOT NULL
);

INSERT INTO tb_produtos (nome, categoria, marca, preco, quantidade)
VALUES ("Notebook Aspire 5", "Informática", "Acer", 3500.00, 10);

INSERT INTO tb_produtos (nome, categoria, marca, preco, quantidade)
VALUES ("Mouse Gamer", "Periféricos", "Logitech", 250.00, 30);

INSERT INTO tb_produtos (nome, categoria, marca, preco, quantidade)
VALUES ("Monitor 24 Polegadas", "Informática", "Samsung", 899.00, 15);

INSERT INTO tb_produtos (nome, categoria, marca, preco, quantidade)
VALUES ("Teclado Mecânico", "Periféricos", "Redragon", 450.00, 20);

INSERT INTO tb_produtos (nome, categoria, marca, preco, quantidade)
VALUES ("Smartphone Galaxy", "Celulares", "Samsung", 2200.00, 12);

INSERT INTO tb_produtos (nome, categoria, marca, preco, quantidade)
VALUES ("Cabo USB-C", "Acessórios", "Multilaser", 35.00, 100);

INSERT INTO tb_produtos (nome, categoria, marca, preco, quantidade)
VALUES ("Cadeira Gamer", "Móveis", "ThunderX3", 1200.00, 8);

INSERT INTO tb_produtos (nome, categoria, marca, preco, quantidade)
VALUES ("Suporte para Notebook", "Acessórios", "Baseus", 180.00, 25);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 500.00;

SELECT * FROM tb_produtos WHERE preco < 500.00;

UPDATE tb_produtos
SET preco = 299.00
WHERE id = 2;

SELECT * FROM tb_produtos;
