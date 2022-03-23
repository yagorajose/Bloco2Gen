CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;

CREATE TABLE tb_categoria(
    id bigint auto_increment,
    tipo varchar(255),
    descricao varchar(255),
    receita boolean,
	primary key(id)
);

SELECT * FROM tb_categoria;

CREATE TABLE tb_produto(
    id bigint auto_increment,
	nome varchar(255),
	validade date,
    preco decimal(4,2),
	categoria_id bigint,
  
    primary key(id),
    foreign key(categoria_id) references tb_categoria(id)
);

SELECT * FROM tb_produto;



INSERT INTO tb_categoria(tipo, descricao, receita)
VALUES("Antidepressivo", "Controla impulsos maniacos", 1);

INSERT INTO tb_categoria(tipo, descricao, receita)
VALUES("Ansiolítico", "Controla a ansiedade", 1);

INSERT INTO tb_categoria(tipo, descricao, receita)
VALUES("Pomada antibatcteriana", "Controla o surgimento de novas bactérias inflamatorias", 0);

INSERT INTO tb_categoria(tipo, descricao, receita)
VALUES("Shampoo", "Anticaspa", 0);

INSERT INTO tb_categoria(tipo, descricao, receita)
VALUES("Antipiretico", "Controla a febre", 0);

-- _____________________________________________________________

INSERT INTO tb_produto(nome, validade, preco)
VALUES("Rivotril", "2023-10-12", 33.99);

INSERT INTO tb_produto(nome, validade, preco)
VALUES("Amoxicilina", "2024-09-12", 22.99);

INSERT INTO tb_produto(nome, validade, preco)
VALUES("Clear", "2023-07-09", 17.99);

INSERT INTO tb_produto(nome, validade, preco)
VALUES("Nebacetin", "2024-08-23", 14.99);

INSERT INTO tb_produto(nome, validade, preco)
VALUES("Dipirona Monoidratada", "2023-06-09", 33.99);

INSERT INTO tb_produto(nome, validade, preco)
VALUES("Head n Shoulders", "2023-04-06", 16.99);


-- _______________________________________________________________


SELECT * FROM tb_produto WHERE preco > 50;
SELECT * FROM tb_produto WHERE preco BETWEEN 3 AND 60;


SELECT * FROM tb_produto WHERE nome LIKE "%b%";

SELECT * FROM tb_produto 
INNER JOIN tb_categoria on tb_categoria.id = tb_produto.id;

SELECT * FROM tb_produto WHERE tb_categoria.id = 3 AND tb_categoria.id = 4;
