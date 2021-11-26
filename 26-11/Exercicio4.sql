create database db_cidade_das_frutas;
use db_cidade_das_frutas;

create table tb_categoria(
id bigint auto_increment unique,
tipo varchar(255),
frescas boolean,
primary key(id)
);

insert into tb_categoria(tipo, frescas) values ("verdura",true);
insert into tb_categoria(tipo, frescas) values ("legume",true);
insert into tb_categoria(tipo, frescas) values ("fruta",true);
insert into tb_categoria(tipo, frescas) values ("tempero",false);
insert into tb_categoria(tipo, frescas) values ("peixe",true);

create table tb_produto(
id bigint auto_increment unique,
nome varchar(255) not null,
valor decimal,
cor varchar(20),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

select * from tb_produto;

insert into tb_produto(nome, valor, cor, categoria_id) values ("Melancia",7.00,"",3);
insert into tb_produto(nome, valor, cor, categoria_id) values ("Banana",3.00,"",3);
insert into tb_produto(nome, valor, cor, categoria_id) values ("Alface crespa",5.00,"roxa",1);
insert into tb_produto(nome, valor, cor, categoria_id) values ("Beterraba",4.00,"roxa",2);
insert into tb_produto(nome, valor, cor, categoria_id) values ("Pimenta",5.00,"vermelha",4);
insert into tb_produto(nome, valor, cor, categoria_id) values ("Mostarda",6.00,"",4);
insert into tb_produto(nome, valor, cor, categoria_id) values ("Sardinha",10.00,"",5);
insert into tb_produto(nome, valor, cor, categoria_id) values ("Namorado",20.00,"",5);

select * from tb_produto where valor >50;
select * from tb_produto where valor between 3 and 60;
select * from tb_produto where nome like "c%";

select tb_produto.nome, tb_produto.valor, tb_categoria.tipo
from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id;

select tb_produto.nome, tb_categoria.tipo
from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id
where tb_categoria.id = 3;


