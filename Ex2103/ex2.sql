CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal; 

CREATE TABLE tb_pizza(
    id bigint auto_increment,
    sabor varchar(255),
	preco int,
    borda boolean,
    
    
    primary key(id)
);

SELECT * FROM tb_pizza;

CREATE TABLE tb_categoria(
    id bigint auto_increment,
	doce boolean,
    tamanho varchar(255),
    pizza_id bigint,
    primary key(id),
    foreign key (pizza_id) references tb_pizza(id)
);

SELECT * FROM tb_categoria;



INSERT INTO tb_pizza(sabor, preco, borda)
VALUES("Calabresa", 40 , 1);

INSERT INTO tb_pizza(sabor, preco, borda)
VALUES("Chocolate", 45 , 0);

INSERT INTO tb_pizza(sabor, preco, borda)
VALUES("Portuguesa", 42 , 1);

INSERT INTO tb_pizza(sabor, preco, borda)
VALUES("Banana", 35 ,  0);

INSERT INTO tb_pizza(sabor, preco, borda)
VALUES("Marguerita", 42 , 1);

INSERT INTO tb_pizza(sabor, preco, borda)
VALUES("Pepperoni", 48 , 0);

INSERT INTO tb_pizza(sabor, preco, borda)
VALUES("Brocolis", 40 , 1);

INSERT INTO tb_pizza(sabor, preco, borda)
VALUES("4 queijos", 43 , 0);

-- _____________________________________________________________

INSERT INTO tb_categoria(doce, tamanho)
VALUES(1, "Media");

INSERT INTO tb_categoria(doce, tamanho)
VALUES (0, "Grande");

INSERT INTO tb_categoria(doce, tamanho)
VALUES(0, "Familia");

-- _______________________________________________________________


-- alterei o valor da pizza para o select abaixo funcionar na varredura
UPDATE tb_pizza SET preco = 48 WHERE ID = 6; 	

SELECT * FROM tb_pizza WHERE preco > 45;
SELECT * FROM tb_pizza WHERE preco BETWEEN 29 AND 60;


SELECT * FROM tb_pizza WHERE nome LIKE "%c%";
SELECT * FROM tb_categoria WHERE nome LIKE "%c%";

SELECT * FROM
tb_pizza INNER JOIN tb_categoria
ON tb_pizza.id = tb_categoria.pizza_id;


SELECT *
FROM tb_categoria INNER JOIN tb_pizza 
ON tb_pizza.id = tb_categoria.pizza_id
WHERE categoria.pizza_id = 2;