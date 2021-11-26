create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint unique auto_increment,
tipo varchar(255),
disponivel boolean,
primary key (id)
);

insert into tb_categoria(tipo, disponivel) values("integral",true);
insert into tb_categoria(tipo, disponivel) values("vegana",true);
insert into tb_categoria(tipo, disponivel) values("vegetariana",true);

create table tb_pizza(
id bigint unique auto_increment,
nome varchar(255) not null,
queijo varchar(255),
valor int,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_pizza(nome, queijo, valor, categoria_id) values("Carioca","mussarela",37,1);
insert into tb_pizza(nome, queijo, valor, categoria_id) values("Berinjela","",40,3);
insert into tb_pizza(nome, queijo, valor, categoria_id) values("Calabreza","",35,1);
insert into tb_pizza(nome, queijo, valor, categoria_id) values("Carne Seca","mussarela",50,1);
insert into tb_pizza(nome, queijo, valor, categoria_id) values("Champignon","catupiry",55,2);
insert into tb_pizza(nome, queijo, valor, categoria_id) values("Escarola","",40,1);
insert into tb_pizza(nome, queijo, valor, categoria_id) values("Frango","catupiry",35,1);
insert into tb_pizza(nome, queijo, valor, categoria_id) values("Rúcula","mussarela",40,1);

select * from tb_pizza where valor > 45;
select * from tb_pizza where valor between 29 and 60;
select * from tb_pizza where nome like "C%";

select tb_pizza.nome, tb_pizza.queijo, tb_pizza.valor, tb_categoria.tipo
from tb_pizza inner join tb_categoria
on tb_categoria.id = tb_pizza.categoria_id;

select * from tb_pizza where categoria_id = 2;
