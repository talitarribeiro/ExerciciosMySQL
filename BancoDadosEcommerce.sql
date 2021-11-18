create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
	id bigint auto_increment,
    nome varchar(255) not null,
    preco decimal(8,2) not null,
    marca varchar(255)not null,
    qtd_estoque smallint,
    primary key(id)
);

-- Inserir dados na tabela
insert into tb_produtos(nome, preco, marca, qtd_estoque) values ("Caneta Touch Alumínio",16.00,"Ekological",450);
insert into tb_produtos(nome, preco, marca, qtd_estoque) values ("Camiseta Geek",49.00,"FrankNaka",300);
insert into tb_produtos(nome, preco, marca, qtd_estoque) values ("Mochila par Notebook com Rodinhas", 542.00,"Click!",30);
insert into tb_produtos(nome, preco, marca, qtd_estoque) values ("Bloco de Notas",14.00,"Creative", 80);
insert into tb_produtos(nome, preco, marca, qtd_estoque) values ("Caneca para Cerveja",32.00,"Spot",40);
insert into tb_produtos(nome, preco, marca, qtd_estoque) values ("Porta Cartão",15.99,"Match",99);
insert into tb_produtos(nome, preco, marca, qtd_estoque) values ("Adesivo para Notebook",3.00,"Cia&Cole",250);
insert into tb_produtos(nome, preco, marca, qtd_estoque) values ("Fone de Ouvido",18.40,"Kimaster",200);

select * from tb_produtos where preco > 500;
select * from tb_produtos where preco < 500;

-- Alterar valor de duas linhas
update tb_produtos set preco = 150.00 where id = 3;
update tb_produtos set preco = 150.00 where id = 6;
