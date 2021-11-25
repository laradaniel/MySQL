create database db_escola;

create table tb_estudantes(
id bigint auto_increment unique,
nome varchar(255),
sala varchar(20),
media decimal,
grau varchar(20),
primary key (id)
);

insert into tb_estudantes(nome, sala, media, grau) values ("Maria","3 ano A", 8.6, "Ensino Fundamental");
insert into tb_estudantes(nome, sala, media, grau) values ("Frajola","1 ano D", 5.0, "Ensino Médio");
insert into tb_estudantes(nome, sala, media, grau) values ("Xuxa","6 ano C", 7.4, "Ensino Fundamental");
insert into tb_estudantes(nome, sala, media, grau) values ("Ashe","5 ano A", 4.7, "Ensino Fundamental");
insert into tb_estudantes(nome, sala, media, grau) values ("Tamyres","2 ano B", 9.8, "Ensino Médio");
insert into tb_estudantes(nome, sala, media, grau) values ("Sueli","3 ano C", 10, "Ensino Médio");
insert into tb_estudantes(nome, sala, media, grau) values ("Duda","2 ano B", 4.8, "Ensino Fundamental");

select * from tb_estudantes where media > 7;
select * from tb_estudantes where media < 7;

update tb_estudantes set media = 8.0 where id=4;

select * from tb_estudantes;
