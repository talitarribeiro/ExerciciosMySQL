-- Criar db
create database if not exists db_rh_func;

-- Usar banco de dados
use db_rh_func;

-- Adicionar uma tabela de banco de dados
create table tb_funcionarios(
	id bigint auto_increment,
    nome varchar(200),
    data_nascimento date,
    cargo varchar(100),
    salario decimal(7,2),
    primary key (id)
);

-- Inserir dados na tabela
insert into tb_funcionarios (nome, data_nascimento, cargo, salario) VALUES ("Talita Ribeiro", "1993-03-21", "Full Stack Developer", 4000.00);
insert into tb_funcionarios (nome, data_nascimento, cargo, salario) VALUES ("Rafael Queiroz", "1981-06-30", "Gerente de Projeto", 7000.00);
insert into tb_funcionarios (nome, data_nascimento, cargo, salario) VALUES ("Jessica Lopes", "1990-09-17", "Front End Senior", 5000.00);
insert into tb_funcionarios (nome, data_nascimento, cargo, salario) VALUES ("Helena Veronezzi", "2002-12-11", "Estagiária", 1800.00);
insert into tb_funcionarios (nome, data_nascimento, cargo, salario) VALUES ("Manu Chao", "1989-08-29", "Analista de Desencolvimento de Software", 3500.00);

-- Mostrar dados da tabela a serem mostrados
select * from tb_funcionarios;
select * from tb_funcionarios where salario < 2000.00;
select * from tb_funcionarios where salario > 2000.00;