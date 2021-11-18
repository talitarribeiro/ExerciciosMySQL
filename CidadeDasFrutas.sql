create database db_cidade_das_frutas;
use db_cidade_das_frutas;

create table tb_categoria(
id bigint auto_increment,
Setor varchar (255),
Origem varchar (255),
CustoPor varchar (255),
primary key (id)
);

insert into tb_categoria (Setor, Origem, CustoPor) Values ("Legumes", "Da Fazenda", "UN");
insert into tb_categoria (Setor, Origem, CustoPor) Values ("Frutas", "Gran", "KG");
insert into tb_categoria (Setor, Origem, CustoPor) Values ("Frutas", "Dr. Frutinha", "UN");
insert into tb_categoria (Setor, Origem, CustoPor) Values ("Verduras", "Verdim", "UN");
insert into tb_categoria (Setor, Origem, CustoPor) Values ("Legumes", "Villa", "UN");


select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
Nome varchar (255),
Embalagem varchar (255),
EmEstoque bigint,
Preco decimal (6, 2),
CodigoDeBarra bigint,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produto (Nome, Embalagem, EmEstoque, Preco, CodigoDeBarra, categoria_id) Values ("Mandioquinha", "A vácuo", 35, "18.79", 23456789101, 1);
insert into tb_produto (Nome, Embalagem, EmEstoque, Preco, CodigoDeBarra, categoria_id) Values ("Pimentão", "Individual", 47, 5.89, 14649464949, 1);
insert into tb_produto (Nome, Embalagem, EmEstoque, Preco, CodigoDeBarra, categoria_id) Values ("Kiwi", "A vácuo", 10, 16.59, 67494134675, 3);
insert into tb_produto (Nome, Embalagem, EmEstoque, Preco, CodigoDeBarra, categoria_id) Values ("Couve", "Individual", 40, 5.00, 67431258794, 4);
insert into tb_produto (Nome, Embalagem, EmEstoque, Preco, CodigoDeBarra, categoria_id) Values ("Alface", "Individual", 25, 5.00, 67431258794, 4);
insert into tb_produto (Nome, Embalagem, EmEstoque, Preco, CodigoDeBarra, categoria_id) Values ("Banana", "A granel", 100, 6.00, 67431258794, 2);
insert into tb_produto (Nome, Embalagem, EmEstoque, Preco, CodigoDeBarra, categoria_id) Values ("Mandioca", "A vácuo", 17, 4.00, 67431258794, 5);
insert into tb_produto (Nome, Embalagem, EmEstoque, Preco, CodigoDeBarra, categoria_id) Values ("Uva", "Caixa", 200, 8.00, 67431258794, 3);

select * from tb_produto;

select * from tb_produto where Preco > 50;

select * from tb_produto where Preco between 3 and 60;

select * from tb_produto where Nome like "C%";

select tb_produto.Nome, tb_produto.Embalagem, tb_produto.EmEstoque, tb_produto.Preco, tb_produto.CodigoDeBarra, tb_categoria.Setor, tb_categoria.Origem, tb_categoria.CustoPor
from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id;

select tb_produto.Nome, tb_produto.Embalagem, tb_produto.EmEstoque, tb_produto.Preco, tb_produto.CodigoDeBarra, tb_categoria.Setor, tb_categoria.Origem, tb_categoria.CustoPor
from tb_produto inner join
tb_categoria on tb_categoria.id = tb_produto.categoria_id where Setor like "%Frutas%";