create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment unique,
area varchar(255),
ativo boolean,
primary key (id)
);

insert into tb_categoria(area,ativo) values ("Idioma",true);
insert into tb_categoria(area,ativo) values ("Programação",true);
insert into tb_categoria(area,ativo) values ("Gastronomia",true);
insert into tb_categoria(area,ativo) values ("Comportamental",true);
insert into tb_categoria(area,ativo) values ("Artes",true);

create table tb_curso(
id bigint auto_increment unique,
nome varchar(255),
nivel varchar(255),
periodo varchar(255),
valor decimal,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_curso(nome,nivel,periodo,valor,categoria_id) values ("Inglês","básico","manhã",150.00,1);
insert into tb_curso(nome,nivel,periodo,valor,categoria_id) values ("JAVA","intermediário","tarde",200.00,2);
insert into tb_curso(nome,nivel,periodo,valor,categoria_id) values ("Panificação","básico","noite",250.00,3);
insert into tb_curso(nome,nivel,periodo,valor,categoria_id) values ("Motivação","","manhã",60.00,4);
insert into tb_curso(nome,nivel,periodo,valor,categoria_id) values ("Pintura aquarela","intermediário","tarde",50.00,5);
insert into tb_curso(nome,nivel,periodo,valor,categoria_id) values ("Francês","avançado","integral",170.00,1);
insert into tb_curso(nome,nivel,periodo,valor,categoria_id) values ("MySQL","básico","tarde",70.00,2);
insert into tb_curso(nome,nivel,periodo,valor,categoria_id) values ("Cerâmica","intermediário","noite",90.00,5);

select * from tb_curso where valor >50;
select * from tb_curso where valor between 3 and 60;
select * from tb_curso where nome like "J%";

select tb_curso.nome, tb_curso.nivel, tb_curso.periodo, tb_curso.valor, tb_categoria.id
from tb_curso inner join tb_categoria
on tb_categoria.id = tb_curso.categoria_id;

select tb_curso.nome, tb_categoria.area
from tb_curso inner join tb_categoria
on tb_categoria.id = tb_curso.categoria_id
where tb_categoria.id = 2;



