create database db_ecommerce;

use db_ecommerce;
create table tb_produtos(
id bigint auto_increment unique,
nome varchar(255) not null,
valor decimal not null,
novo boolean,
tamanho varcharacter(5),
primary key (id)
);

insert into tb_produtos(nome, valor, novo, tamanho) values ("Biquini",300,true,"m");
insert into tb_produtos(nome, valor, novo, tamanho) values ("Bolsa",600,true,"");
insert into tb_produtos(nome, valor, novo, tamanho) values ("Chinelo",100,false,"37");
insert into tb_produtos(nome, valor, novo, tamanho) values ("Capacete",1200,true,"");
insert into tb_produtos(nome, valor, novo, tamanho) values ("Short",220,false,"gg");
insert into tb_produtos(nome, valor, novo, tamanho) values ("Meia",95,true,"");
insert into tb_produtos(nome, valor, novo, tamanho) values ("Calça",550,true,"44");
insert into tb_produtos(nome, valor, novo, tamanho) values ("Jaqueta",400,true,"m");

select * from tb_produtos where valor > 500;
select * from tb_produtos where valor < 500;

update tb_produtos set valor = 100 where id = 6;

select * from tb_produtos;