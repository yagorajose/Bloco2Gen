CREATE database db_ecommerce;

use db_ecommerce;

create table tb_ecommerce(
	id bigint auto_increment,
    produto varchar(255),
    valor int,
    estoque int (255),
    fretegratis boolean,
    
    primary key(id)


);


select * from tb_ecommerce;

insert into  tb_ecommerce (produto, valor, estoque, fretegratis) values ("Notebook", 3000, 26, true);
insert into  tb_ecommerce (produto, valor, estoque, fretegratis) values ("Televisão 43'", 2200, 41, true);
insert into  tb_ecommerce (produto, valor, estoque, fretegratis) values ("Mesa Gamer", 599, 15, false);
insert into  tb_ecommerce (produto, valor, estoque, fretegratis) values ("Secador de Cabelo", 119, 153, true);
insert into  tb_ecommerce (produto, valor, estoque, fretegratis) values ("Barbeador Elétrico", 259, 102, false);



select * from tb_ecommerce where valor > 500;

select * from tb_ecommerce where valor < 500;

update tb_ecommerce set fretegratis = true where id = 5;







