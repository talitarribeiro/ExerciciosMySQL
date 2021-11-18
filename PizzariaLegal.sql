create database db_pizzaria_legal;

use db_pizzaria_legal;

create table Categoria(
id bigint auto_increment,
Sabor varchar (255),
Borda varchar (255),
Brinde varchar (255),
primary key (id)
);

insert into Categoria (Sabor, Borda, Brinde) Values ("Carne", "Cheddar", "Itubaína");
insert into Categoria (Sabor, Borda, Brinde) Values ("Frango", "Catupiry", "Dolly Guaraná");
insert into Categoria (Sabor, Borda, Brinde) Values ("Peixe", "Cream Cheese", "Guaraná Antártica");
insert into Categoria (Sabor, Borda, Brinde) Values ("Vegana", "Cream Cheese", "Coca Cola");
insert into Categoria (Sabor, Borda, Brinde) Values ("Queijo", "Catupiry", "Fanta Laranja");

select * from Categoria;

create table tb_pizza(
id bigint auto_increment,
NomePizza varchar (255),
Tamanho varchar (255),
Preço decimal (6, 2),
Ingredientes varchar (255),
Categoria_id bigint,
primary key (id),
foreign key (Categoria_id) REFERENCES Categoria (id)
);

insert into tb_pizza (NomePizza, Tamanho, Preço, Ingredientes, Categoria_id) Values ("Moda do Pizzaiolo", "Grande", 44.99, "Lombo, champignon, bacon, palmito, cebola e catupiry", 1);
insert into tb_pizza (NomePizza, Tamanho, Preço, Ingredientes, Categoria_id) Values ("Cocoricó", "Médio", 34.99, "Peito de frango desfiado, palmito, bacon e catupiry", 2);
insert into tb_pizza (NomePizza, Tamanho, Preço, Ingredientes, Categoria_id) Values ("Atum", "Grande", 40.99, "Atum e cebola", 3);
insert into tb_pizza (NomePizza, Tamanho, Preço, Ingredientes, Categoria_id) Values ("Portugana", "Médio", 51.99, "Presunto vegano de soja, palmito, cebola e mussarela vegana", 4);
insert into tb_pizza (NomePizza, Tamanho, Preço, Ingredientes, Categoria_id) Values ("5 Queijos", "Grande", 47.99, "Mussarela, catupiry, provolone, parmesãoe  gorgonzola", 5);
insert into tb_pizza (NomePizza, Tamanho, Preço, Ingredientes, Categoria_id) Values ("Diferente com Mussarela", "Médio", 37.99, "Atum, ovos, palmito, tomate e mussarela", 3);
insert into tb_pizza (NomePizza, Tamanho, Preço, Ingredientes, Categoria_id) Values ("Filé Mignon", "Grande", 50.99, "Filé mignon, bacon, cebola, mussarela ou catupiry", 1);
insert into tb_pizza (NomePizza, Tamanho, Preço, Ingredientes, Categoria_id) Values ("Frangana", "Médio", 52.99, "Frango vegano de soja, palmito e mussarela vegana", 4);
 
select * from tb_pizza;
 
select * from tb_pizza where Preço > 45;
 
select * from tb_pizza where Preço between 29 and 60;
 
select * from tb_pizza where NomePizza like "C%";
 
select tb_pizza.NomePizza, tb_pizza.Tamanho, tb_pizza.Preço, tb_pizza.Ingredientes, Categoria.Sabor, Categoria.Borda, Categoria.Brinde
from tb_pizza inner join Categoria
on Categoria.id = tb_pizza.Categoria_id;

select tb_pizza.NomePizza, tb_pizza.Tamanho, tb_pizza.Preço, tb_pizza.Ingredientes, Categoria.Sabor, Categoria.Borda, Categoria.Brinde
from tb_pizza inner join
Categoria on Categoria.id = tb_pizza.Categoria_id where Sabor like "%Vegana%";