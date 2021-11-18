create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
Departamento varchar (255),
PreMontado varchar (255),
Aplicacao varchar (255),
primary key (id)
);

insert into tb_categoria (Departamento, PreMontado, Aplicacao) Values ("Sala", "Não", "Acabamento");
insert into tb_categoria (Departamento, PreMontado, Aplicacao) Values ("Cozinha", "Sim", "Acabamento");
insert into tb_categoria (Departamento, PreMontado, Aplicacao) Values ("Quarto", "Sim", "Acabamento");
insert into tb_categoria (Departamento, PreMontado, Aplicacao) Values ("Banheiro", "Não", "Construção");
insert into tb_categoria (Departamento, PreMontado, Aplicacao) Values ("Área de Serviço", "Não", "Acabamento");

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
Nome varchar (255),
Marca varchar (255),
EmEstoque bigint,
Preco decimal (6, 2),
VendidoPor varchar (255),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produto (Nome, Marca, EmEstoque, Preco, VendidoPor, categoria_id) Values ("Torneira", "Hydra", 35, 85.41, "Telhanorte", 2);
insert into tb_produto (Nome, Marca, EmEstoque, Preco, VendidoPor, categoria_id) Values ("Piso Vinílico M²", "Kapazi", 25, 339.92, "Leroy Merlin", 3);
insert into tb_produto (Nome, Marca, EmEstoque, Preco, VendidoPor, categoria_id) Values ("Tanque de Encaixe", "Tramontina", 13, 368.91, "Obramax", 5);
insert into tb_produto (Nome, Marca, EmEstoque, Preco, VendidoPor, categoria_id) Values ("Porta Camarão", "Vert", 4, 499.00, "Dicico", 3);
insert into tb_produto (Nome, Marca, EmEstoque, Preco, VendidoPor, categoria_id) Values ("Forro de Gesso", "Gyplex", 55, 242.00, "Joli", 4);
insert into tb_produto (Nome, Marca, EmEstoque, Preco, VendidoPor, categoria_id) Values ("Soleira Marmore 82 X 14 CM", "Granífera", 3, 54.90, "C&C", 1);
insert into tb_produto (Nome, Marca, EmEstoque, Preco, VendidoPor, categoria_id) Values ("Suporte para TV Articulado/Inclinável", "Brasforma", 13, 89.90, "Americanas", 3);
insert into tb_produto (Nome, Marca, EmEstoque, Preco, VendidoPor, categoria_id) Values ("Box de Vidro 1,90 X 1,10 M", "Woodglass", 8, 846,98, "Village", 4);

select * from tb_produto;

select * from tb_produto where Preco > 50;

select * from tb_produto where Preco between 3 and 60;

select * from tb_produto where Nome like "C%";

select tb_produto.Nome, tb_produto.Marca, tb_produto.EmEstoque, tb_produto.Preco, tb_produto.VendidoPor, tb_categoria.Departamento, tb_categoria.PreMontado, tb_categoria.Aplicacao
from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id;

select tb_produto.Nome, tb_produto.Marca, tb_produto.EmEstoque, tb_produto.Preco, tb_produto.VendidoPor, tb_categoria.Departamento, tb_categoria.PreMontado, tb_categoria.Aplicacao
from tb_produto inner join
tb_categoria on tb_categoria.id = tb_produto.categoria_id where Departamento like "%Banheiro%";