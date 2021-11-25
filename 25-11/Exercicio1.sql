create database db_empresa;

use db_empresa;
create table tb_funcionaries(
id bigint auto_increment unique,
nome varchar (100) not null,
salario decimal not null,
turno varchar(10),
idade int,
primary key (id)
);

insert into tb_funcionaries(nome, salario, turno, idade) values ("Bertolino",15000.00,"integral",35);
insert into tb_funcionaries(nome, salario, turno, idade) values ("Margarida",1500.00,"manhã",55);
insert into tb_funcionaries(nome, salario, turno, idade) values ("Joaquim",3500.00,"tarde",23);
insert into tb_funcionaries(nome, salario, turno, idade) values ("Hiago",1000.00,"manhã",18);
insert into tb_funcionaries(nome, salario, turno, idade) values ("Samantha",7000.00,"noturno",27);

select * from tb_funcionaries;

select * from tb_funcionaries where salario > 2000;

select * from tb_funcionaries where salario < 2000;

update tb_funcionaries set turno = "tarde" where id=2;

