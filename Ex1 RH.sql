CREATE database db_recursoshumanos;

use db_recursoshumanos;

create table tb_funcionarios(
	id bigint auto_increment,
    nome varchar(255),
    cargo varchar (255),
    idade int (255),
    salario int,
    
    primary key(id)


);


select * from tb_funcionarios;

insert into  tb_funcionarios (nome, cargo, idade, salario) values ("Thiago", "Enfermeiro", 26, 8000);
insert into  tb_funcionarios (nome, cargo, idade, salario) values ("Fernanda", "Recepcionista", 22, 2000);
insert into  tb_funcionarios (nome, cargo, idade, salario) values ("Julia", "Médica", 31, 10000);
insert into  tb_funcionarios (nome, cargo, idade, salario) values ("Pedro", "Gerente", 40, 11000);
insert into  tb_funcionarios (nome, cargo, idade, salario) values ("Roberto", "Almoxarife", 30, 2500);
insert into  tb_funcionarios (nome, cargo, idade, salario) values ("Diego", "Faxineiro", 20, 1800);




select * from tb_funcionarios where salario > 2000;

select * from tb_funcionarios where salario < 2000;

update tb_funcionarios set salario = 12000 where id = 5;







