create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment unique,
tipo varchar(255),
disponivel boolean,
primary key (id)
);

insert into tb_categoria(tipo, disponivel) values ("gotas",true);
insert into tb_categoria(tipo, disponivel) values ("comprimido",true);
insert into tb_categoria(tipo, disponivel) values ("spray",true);
insert into tb_categoria(tipo, disponivel) values ("xarope",true);
insert into tb_categoria(tipo, disponivel) values ("pomada",true);

create table tb_produto(
id bigint auto_increment unique,
nome varchar(255),
valor decimal,
receita boolean,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_produto(nome, valor, receita, categoria_id) values ("Rivotril",80,true,2);
insert into tb_produto(nome, valor, receita, categoria_id) values ("Allegra",40,false,2);
insert into tb_produto(nome, valor, receita, categoria_id) values ("Benegripe",33,false,2);
insert into tb_produto(nome, valor, receita, categoria_id) values ("Tylenol",27,false,2);
insert into tb_produto(nome, valor, receita, categoria_id) values ("Dipirona",25,false,1);
insert into tb_produto(nome, valor, receita, categoria_id) values ("Neosoro",60,false,3);
insert into tb_produto(nome, valor, receita, categoria_id) values ("Paracetamol",30,false,4);
insert into tb_produto(nome, valor, receita, categoria_id) values ("Hipoglos",17,false,5);

select * from tb_produto where valor > 50;
select * from tb_produto where valor between 3 and 60;
select * from tb_produto where nome like "B%";

select tb_produto.nome, tb_produto.valor, tb_produto.receita, tb_categoria.tipo
from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id;

select tb_produto.nome, tb_categoria.tipo
from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id
where tb_categoria.id = 5;


