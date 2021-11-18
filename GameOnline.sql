-- criando o banco de dados
create database db_generation_game_online;

-- selecionando o BD criado
use db_generation_game_online;

-- criando a tabela de classe
create table tb_classe(
id bigint auto_increment,
Raça varchar (255) not null,
Tipo varchar (255),
Fraqueza varchar (255),
primary key (id)
);
-- populando tb_classe
insert into tb_classe (Raça, Tipo, Fraqueza) values ("Elfo", "Arqueiro", "Berserker");
insert into tb_classe (Raça, Tipo, Fraqueza) values ("Elfo", "Mago", "Guerreiro");
insert into tb_classe (Raça, Tipo, Fraqueza) values ("Orc", "Berserker", "Mago");
insert into tb_classe (Raça, Tipo, Fraqueza) values ("Humano", "Guerreiro", "Arqueiro");
insert into tb_classe (Raça, Tipo, Fraqueza) values ("Humano", "Feiticeiro", "Guerreiro");

select * from tb_classe;

-- criando a tabela de perosnagem
create table tb_personagem(
id bigint auto_increment,
Nome varchar (255) not null,
ArmaFavorita varchar (255) not null,
Ataque bigint not null,
Defesa bigint not null,
Dps decimal(5, 2) not null,
classe_id bigint,
primary key (id),
foreign key (classe_id) REFERENCES tb_classe (id)
);

-- populando tb_classe
insert into tb_personagem (Nome, ArmaFavorita, Ataque, Defesa, Dps, classe_id) values ("Legolas", "Arco Divino", 5500, 2000, 150.5, 1);
insert into tb_personagem (Nome, ArmaFavorita, Ataque, Defesa, Dps, classe_id) values ("Harry Potter", "Varinha Mágica",1800, 4000, 90.5, 5);
insert into tb_personagem (Nome, ArmaFavorita, Ataque, Defesa, Dps, classe_id) values ("Dante", "Espada Demoníaca", 8000, 4000, 200, 4);
insert into tb_personagem (Nome, ArmaFavorita, Ataque, Defesa, Dps, classe_id) values ("Caim", "Adaga de Ossos", 5000, 2500, 145.5, 4);
insert into tb_personagem (Nome, ArmaFavorita, Ataque, Defesa, Dps, classe_id) values ("Mulher Maravilha", "Manoplas Explosivas", 9000, 4000, 250, 3);
insert into tb_personagem (Nome, ArmaFavorita, Ataque, Defesa, Dps, classe_id) values ("Mestre dos Magos", "Jóias do infinito", 11000, 900, 150.5, 2);
insert into tb_personagem (Nome, ArmaFavorita, Ataque, Defesa, Dps, classe_id) values ("Prestus", "Cartola Mágica", 500, 8000, 35, 2);
insert into tb_personagem (Nome, ArmaFavorita, Ataque, Defesa, Dps, classe_id) values ("Shera", "Espada de Greyskull", 6000, 2000, 150.5, 3);

-- selecionando os mais fortes
select * from tb_personagem;

-- selecionando os mais fortes
select * from tb_personagem where Ataque > 2000;

-- selecionando os que tem a defesa entre 1000 e 2000
select * from tb_personagem where Ataque Between 1000 and 2000;

-- selecionando personagens com nomes que começam com C
select * from tb_personagem where Nome like "c%";

-- selecionando personagens que tenham c no nome
select * from tb_personagem where nome like "%c%";

-- selecionando itens da tabela personagem em iner join com tb_classe
select tb_personagem.Nome, tb_personagem.ArmaFavorita, tb_personagem.Ataque, tb_personagem.Defesa, tb_personagem.Dps, tb_classe.Raça, tb_classe.Tipo, tb_classe.Fraqueza
from tb_personagem inner join tb_classe
on tb_classe.id = tb_personagem.classe_id;

 -- selecionando itens da tabela personagem em iner join com tb_classe onde a categoria é arqueiro
select * from tb_personagem inner join
tb_classe on tb_classe.id = tb_personagem.classe_id where Tipo like "%arqueiro%";