create database db_generation_game_online;

use db_generation_game_online; 

create table tb_classe(
id bigint auto_increment,
posicao varchar(255) not null,
arma varchar(255),
nivel int,
primary key(id)
);

insert into tb_classe(posicao, arma, nivel) values ("tanque","força",3);
insert into tb_classe(posicao, arma, nivel) values ("atirador","canhão",7);
insert into tb_classe(posicao, arma, nivel) values ("mago","magia",2);
insert into tb_classe(posicao, arma, nivel) values ("lutador","lança",4);
insert into tb_classe(posicao, arma, nivel) values ("jungle","metralhadora",5);

create table tb_personagem(
id bigint auto_increment unique,
nome varchar(255) not null,
ataque int not null,
defesa int not null,
classe_id bigint,
primary key (id),
foreign key (classe_id) references tb_classe(id)
);

insert into tb_personagem(nome,ataque,defesa,classe_id) values("Shivana",3000,2000,5);
insert into tb_personagem(nome,ataque,defesa,classe_id) values("Jinx",5000,3000,2);
insert into tb_personagem(nome,ataque,defesa,classe_id) values("Vi",10000,1000,4);
insert into tb_personagem(nome,ataque,defesa,classe_id) values("Carolyn",9000,6000,4);
insert into tb_personagem(nome,ataque,defesa,classe_id) values("Amumu",2000,1000,3);
insert into tb_personagem(nome,ataque,defesa,classe_id) values("Seraphine",3000,7000,3);
insert into tb_personagem(nome,ataque,defesa,classe_id) values("Teemo",2500,2500,3);
insert into tb_personagem(nome,ataque,defesa,classe_id) values("Jhin",8000,5000,1);

select * from tb_personagem;
select * from tb_personagem where ataque>2000;
select * from tb_personagem where defesa between 1000 and 2000;
select * from tb_personagem where nome like "c%";

select tb_personagem.nome, tb_personagem.ataque, tb_personagem.defesa, tb_classe.posicao
from tb_personagem inner join tb_classe
on tb_classe.id = tb_personagem.classe_id;

select * from tb_personagem where classe_id = 2;

