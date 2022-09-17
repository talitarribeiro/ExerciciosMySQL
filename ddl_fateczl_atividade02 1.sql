CREATE DATABASE fateczl; 
USE fateczl;

CREATE TABLE aluno(
id_aluno int auto_increment primary key,
nome_aluno varchar(150),
telefone_celular varchar(10),
email_aluno varchar(80), 
data_nasc varchar(8)
);

CREATE TABLE disciplina(
id_disciplina int auto_increment primary key,
nome_disciplina varchar(50),
duracao_meses int, 
descricao varchar(255),
professor varchar(150)
);

CREATE TABLE nota(
id_aluno_fk int, 
id_disciplina_fk int,
n1 float,
n2 float,
n3 float,
media_final float,
FOREIGN KEY(id_aluno_fk) REFERENCES aluno(id_aluno),
FOREIGN KEY(id_disciplina_fk) REFERENCES disciplina(id_disciplina)
);


ALTER TABLE aluno CHANGE id_aluno id_ra int; 
select * from aluno; 


ALTER TABLE  nota CHANGE id_aluno_fk id_ra_fk int; 
select * from nota; 

-- 1) Remover Tabela aluno 
ALTER TABLE aluno ADD COLUMN genero varchar(10);
select * from aluno;
 
-- 2) Excluir uma coluna da Tabela aluno 
ALTER TABLE aluno DROP COLUMN email_aluno; 
select * from aluno; 

-- 3) Mudar o nome da coluna professor para nome_professor da Tabela disciplina
ALTER TABLE disciplina CHANGE COLUMN  professor nome_professor varchar(150);
select * from disciplina; 

-- 4) Adicionar uma restrição NOT NULL na coluna nome_alunona Tabela aluno 
ALTER TABLE aluno MODIFY nome_aluno varchar(200) NOT NULL;
select * from aluno;  

-- 5) Renomear o nome da Tabela aluno para estudante
ALTER TABLE aluno RENAME TO estudante; 
select * from estudante; 

-- 6) Remover Tabela aluno 
DROP TABLE estudante;

-- 7) Remover Tabela estudante e disciplina
DROP TABLE estudante, disciplina; 

-- 8) Remover Todas Tabelas
DROP TABLE nota, estudante, disciplina;




