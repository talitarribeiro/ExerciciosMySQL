create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (descricao, ativo) values ("Bovino",true);
insert into tb_categoria (descricao, ativo) values ("Suíno",true);
insert into tb_categoria (descricao, ativo) values ("Ave",true);
insert into tb_categoria (descricao, ativo) values ("Pertences de Feijoada",true);
insert into tb_categoria (descricao, ativo) values ("Embutidos",true);
insert into tb_categoria (descricao, ativo) values ("Soja",true);
insert into tb_categoria (descricao, ativo) values ("Outros",true);

select * from tb_categoria;

create table tb_produtos (
id bigint auto_increment,
nome varchar (255) not null,
preco decimal(6,2) not null,
qtproduto int not null,
dtvalidade date,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Asa",40.00,30, "2021-11-07", 3);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Picanha",20.00,30, "2021-11-08", 1);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Coxa de Frango",20.00,30, "2021-11-07", 3);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Bacon",30.00,30, "2021-11-09", 1);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Hamburguer",60.00,30, "2021-09-07", 5);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Cupim",20.00,30, "2021-11-10", 1);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Peito de Frango",25.00,30, "2021-11-09", 3);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Orelha de Porco",20.00,30, "2021-11-07", 4);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Salame",18.00,30, "2021-11-21", 5);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Medalhao",50.00,30, "2021-11-15", 3);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Mocotó",20.00,30, "2021-10-05", 2);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Chuleta",20.00,30, "2021-10-07", 1);
insert into tb_produtos (nome, preco, qtProduto) values ("Acendedor de Churrasqueira",20.00, 25);
insert into tb_produtos (nome, preco, qtProduto) values ("Soprador de Churrasqueira",35.00, 30);

select * from tb_produtos;

select * from tb_produtos order by nome, preco;

select * from tb_produtos order by nome DESC;

select * from tb_produtos where preco > 20.00 and categoria_id = 1;

select * from tb_produtos where preco > 20.00 or categoria_id = 1;

select * from tb_produtos where not  categoria_id = 1;

select * from tb_produtos where nome like "ha%";

select * from tb_produtos where nome like "%ha";

select * from tb_produtos where nome like "%ha%";

select * from tb_produtos where preco in (20, 30, 40);

select * from tb_produtos where preco between 20 and 40; 

select * from tb_produtos where dtvalidade  between "2021-11-07" and "2021-11-15";

select count(*) from tb_produtos;

select count(categoria_id) from tb_produtos;

select sum(preco) from tb_produtos; 

select avg(preco) from tb_produtos;

select categoria_id,  avg(preco) from tb_produtos group by categoria_id;

select max(preco) from tb_produtos;

select min(preco) from tb_produtos;

select tb_produtos.nome, tb_produtos.preco, tb_produtos_qtproduto, tb_categoria.descricao 
from tb_produtos inner join tb_categoria 
on tb_categoria.id = tb_produtos.categoria_id; 

select tb_produtos.nome, avg(tb_produtos.preco) as preco_medio 
from tb_produtos left join tb_categoria 
on tb_categoria.id = tb_produtos.categoria_id; 

 

