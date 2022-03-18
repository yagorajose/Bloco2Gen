CREATE database db_multiplaescolha;

use db_multiplaescolha;

create table tb_estudantes(
	id bigint auto_increment,
    nome varchar(255),
    serie varchar (255),
    idade int (255),
    nota int,
    
    primary key(id)


);


select * from tb_estudantes;

insert into  tb_estudantes (nome, serie, idade, nota) values ("Thiago", "Terceiro", 17, 9);
insert into  tb_estudantes (nome, serie, idade, nota) values ("Fernando", "Segundo", 16, 8);
insert into  tb_estudantes (nome, serie, idade, nota) values ("Cabeção", "Terceiro", 18, 5);
insert into  tb_estudantes (nome, serie, idade, nota) values ("Rafa", "Terceiro", 17, 5);
insert into  tb_estudantes (nome, serie, idade, nota) values ("Nanda", "Segundo", 17, 7);
insert into  tb_estudantes (nome, serie, idade, nota) values ("Alberto", "Primeiro", 15, 8);


select * from tb_estudantes where nota > 7;

select * from tb_estudantes where nota < 7;

update tb_estudantes set nota = 7 where id = 3;

delete from tb_estudantes where id = 3;






