create database db_curso_da_minha_vida;

use db_curso_da_minha_vida;

create table tb_categoria(
id bigint auto_increment not null,
TipoFormacao varchar(255),
PossibilidadeDeIntercambio varchar(255),
primary key(id)
);

insert into tb_categoria(TipoFormacao, PossibilidadeDeIntercambio)values("Profissionalizante", "Não");
insert into tb_categoria(TipoFormacao, PossibilidadeDeIntercambio)values("Graduação", "Sim");
insert into tb_categoria(TipoFormacao, PossibilidadeDeIntercambio)values("Pós-Graduação", "Sim");
insert into tb_categoria(TipoFormacao, PossibilidadeDeIntercambio)values("Mestrado", "Sim");
insert into tb_categoria(TipoFormacao, PossibilidadeDeIntercambio)values("Técnologo", "Não");

create table tb_produtos(
id bigint auto_increment not null,
Curso varchar(255),
Preco decimal(6,2),
Duracao varchar(255),
Desconto varchar(255),
id_categoria bigint,
primary key(id),
foreign key(id_categoria) references tb_categoria (id)
);

insert into tb_produtos (Curso, Preco, Duracao, Desconto, id_categoria) values("Design ", 2480.00, "6 semestres", "5%" , 2);
insert into tb_produtos (Curso, Preco, Duracao, Desconto, id_categoria) values("Ciência da Computação", 2380.00, "8 semestres", "15%", 2);
insert into tb_produtos (Curso, Preco, Duracao, Desconto, id_categoria) values("Web Full Stack", 4017.00, "9 meses", "70%", 1);
insert into tb_produtos (Curso, Preco, Duracao, Desconto, id_categoria) values("UX/UI Design", 2640.00, "12 semestres", "20%", 1);
insert into tb_produtos (Curso, Preco, Duracao, Desconto, id_categoria) values("Analise e Desenvolvimento de sistemas", 670.00, "4 semestres", "0%", 5);
insert into tb_produtos (Curso, Preco, Duracao, Desconto, id_categoria) values("Inteligencia Artificial", 3800.00, "3 semestres", "40%", 3);
insert into tb_produtos (Curso, Preco, Duracao, Desconto, id_categoria) values("Animação", 387.00, "4 semestres", "10%", 3);
insert into tb_produtos (Curso, Preco, Duracao, Desconto, id_categoria) values("Engenharia da Computação", 2210.00, "10 semestres","10%", 2);
insert into tb_produtos (Curso, Preco, Duracao, Desconto, id_categoria) values("Engenharia Eletrica e Computação", 2900.00, "6 semestres" ,"0%", 4);


select curso, CONCAT('R$', FORMAT(Preco, 2, 'pt_br')) as preco, duracao, desconto from tb_produtos where preco > 3000;
select curso, CONCAT('R$', FORMAT(preco, 2, 'pt_br')) as preco, duracao, desconto from tb_produtos where preco > 600 and preco < 2500 ;
select curso, CONCAT('R$', FORMAT(preco, 2, 'pt_br')) as preco, duracao, desconto from tb_produtos where nome like 'A%';

select tb_produtos.Curso, tb_produtos.Preco, tb_produtos.Duracao, tb_produtos.Desconto, tb_categoria.TipoFormacao, tb_categoria.PossibilidadeDeIntercambio
from tb_produtos inner join tb_categoria
on tb_categoria.id = tb_produtos.id_categoria;

select tb_produtos.Curso, tb_produtos.Preco, tb_produtos.Duracao, tb_produtos.Desconto, tb_categoria.TipoFormacao, tb_categoria.PossibilidadeDeIntercambio
from tb_produtos inner join tb_categoria 
on tb_categoria.id = tb_produtos.id_categoria where TipoFormacao like "%Graduação%";