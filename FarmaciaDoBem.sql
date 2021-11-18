create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
Segmento varchar (255),
NecessitaDeReceita varchar (255),
Setor varchar (255),
primary key (id)
);

insert into tb_categoria (Segmento, NecessitaDeReceita, Setor) Values ("Medicamento", "Sim", "Adulto");
insert into tb_categoria (Segmento, NecessitaDeReceita, Setor) Values ("Medicameto", "Não", "Adulto");
insert into tb_categoria (Segmento, NecessitaDeReceita, Setor) Values ("Medicamento", "Sim", "Infantil");
insert into tb_categoria (Segmento, NecessitaDeReceita, Setor) Values ("Medicamento", "Não", "Infantil");
insert into tb_categoria (Segmento, NecessitaDeReceita, Setor) Values ("Cosmético", "Não", "Adulto");

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
NomeDoMedicamento varchar (255),
RecomendadoPara varchar (255),
Qtde bigint,
Preco decimal (6, 2) not null,
Validade date not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produto (NomeDoMedicamento, RecomendadoPara, Qtde, Preco, Validade, categoria_id) Values ("Paracetamol", "Dor de Cabeça", 38, 5.93, "2022-12-11", 2);
insert into tb_produto (NomeDoMedicamento, RecomendadoPara, Qtde, Preco, Validade, categoria_id) Values ("Rivaroxabana", "Anticoagulante", 47, 105.00, "2024-08-29", 1);
insert into tb_produto (NomeDoMedicamento, RecomendadoPara, Qtde, Preco, Validade, categoria_id) Values ("Alenia", "Broncoconstrição ou Broncoespasmo", 25, 107.90, "2022-03-21", 1);
insert into tb_produto (NomeDoMedicamento, RecomendadoPara, Qtde, Preco, Validade, categoria_id) Values ("Torcilax", "Tensão Muscular", 78, 13.84, "2023-06-11", 2);
insert into tb_produto (NomeDoMedicamento, RecomendadoPara, Qtde, Preco, Validade, categoria_id) Values ("Cetoconazol", "Antimicótico", 24, 10.79, "2024-01-31", 2);
insert into tb_produto (NomeDoMedicamento, RecomendadoPara, Qtde, Preco, Validade, categoria_id) Values ("Ácido Acetilsalicilico", "", 186, 4.89, "2022-12-13", 3);
insert into tb_produto (NomeDoMedicamento, RecomendadoPara, Qtde, Preco, Validade, categoria_id) Values ("Sorine", "Descongestionante Nasal", 32, 27.98, "2025-12-24", 4);
insert into tb_produto (NomeDoMedicamento, RecomendadoPara, Qtde, Preco, Validade, categoria_id) Values ("Água Micelar", "Demaquilante", 14, 19.90, "2023-04-19", 5);

select * from tb_produto;

select * from tb_produto where Preco > 50;

select * from tb_produto where Preco between 3 and 60;

select * from tb_produto where NomeDoMedicamento like "B%";

select tb_produto.NomeDoMedicamento, tb_produto.RecomendadoPara, tb_produto.Qtde, tb_produto.Preco, tb_produto.Validade, tb_categoria.Segmento, tb_categoria.NecessitaDeReceita, tb_categoria.Setor
from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id;

select tb_produto.NomeDoMedicamento, tb_produto.RecomendadoPara, tb_produto.Qtde, tb_produto.Preco, tb_produto.Validade, tb_categoria.Segmento, tb_categoria.NecessitaDeReceita, tb_categoria.Setor
from tb_produto inner join
tb_categoria on tb_categoria.id = tb_produto.categoria_id where Segmento like "%Cosmético%";