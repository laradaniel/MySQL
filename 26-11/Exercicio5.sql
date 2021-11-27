create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment unique,
comodo varchar(255),
ativo boolean,
primary key (id)
);

insert into tb_categoria(comodo,ativo) values("Cozinha",true);
insert into tb_categoria(comodo,ativo) values("Sala",true);
insert into tb_categoria(comodo,ativo) values("Banheiro",true);
insert into tb_categoria(comodo,ativo) values("Quarto",true);
insert into tb_categoria(comodo,ativo) values("Quintal",true);

create table tb_produto(
id bigint auto_increment unique,
nome varchar(255) not null,
valor decimal,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_produto(nome,valor,categoria_id) values ("Torneira",100.00,1);
insert into tb_produto(nome,valor,categoria_id) values ("Cimento",60.00,5);
insert into tb_produto(nome,valor,categoria_id) values ("Tinta",130.00,4);
insert into tb_produto(nome,valor,categoria_id) values ("Grama",40.00,5);
insert into tb_produto(nome,valor,categoria_id) values ("Geladeira",3000.00,1);
insert into tb_produto(nome,valor,categoria_id) values ("Cama box",2300.00,4);
insert into tb_produto(nome,valor,categoria_id) values ("Sofá",1700.00,2);
insert into tb_produto(nome,valor,categoria_id) values ("Box vidro",600.00,3);

select * from tb_produto where valor >50;
select * from tb_produto where valor between 3 and 60;

select * from tb_produto where nome like "C%";

select tb_produto.nome, tb_produto.valor, tb_categoria.comodo
from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id;

select tb_produto.nome, tb_categoria.comodo
from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id
where tb_categoria.id = 4;
