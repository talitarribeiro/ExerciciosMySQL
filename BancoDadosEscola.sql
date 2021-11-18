create database db_escola;

use db_escola;

create table tb_alunos(
	id bigint auto_increment,
    nome varchar(200),
    data_nascimento date,
    turma int,
    media decimal(4,2),
    primary key (id)
);


insert into tb_alunos (nome, data_nascimento, turma, media) values ("Mafalda", "1969-01-21", 1, 9.50);
insert into tb_alunos (nome, data_nascimento, turma, media) values ("Manollito", "1959-09-18", 1, 6.00);
insert into tb_alunos (nome, data_nascimento, turma, media) values ("Filipe", "1960-06-30", 1, 8.00);
insert into tb_alunos (nome, data_nascimento, turma, media) values ("Susanita", "1960-07-09", 2, 4.50);
insert into tb_alunos (nome, data_nascimento, turma, media) values ("Liberdade", "1960-09-02", 2, 10.00);
insert into tb_alunos (nome, data_nascimento, turma, media) values ("Miguelito", "1961-12-03", 3, 8.50);
insert into tb_alunos (nome, data_nascimento, turma, media) values ("Guille", "1974-03-16", 3, 7.00);
INSERT INTO tb_alunos (nome, data_nascimento, turma, media) VALUES ("Quino", "1932-07-17", 3, 10.00);
                          
select * from tb_alunos;
select * from tb_alunos where nota > 7.00;
select * from tb_alunos where nota < 7.00;

UPDATE tb_alunos SET media = 10.00 WHERE id = 2;
UPDATE tb_alunos SET media = 5.50 WHERE id = 7;