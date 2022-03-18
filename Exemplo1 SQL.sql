CREATE database db_pokemon;

use db_pokemon;

create table tb_kanto(
	id bigint auto_increment,
    nome varchar(255),
    tipo varchar(255),
    ataque int, 
    

	primary key(id)
    );

select * from tb_kanto;

insert into tb_kanto(nome, tipo, ataque) values ("Bulbassauro", "Planta/Veneno", 21);


alter table tb_kanto
ADD	defesa int;
 