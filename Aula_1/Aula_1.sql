create database db_banco;
-- create database if not exists db_dados;
drop table tb_cliente; -- apaga a tabela

create table tb_cliente (
id int not null,
nome varchar(50) not null,
data_cadastro date not null,
endereco text,
estado char(2),
ativo boolean default true,
valor float(8,2) default 0
);

rename table td_user to tb_user;
rename table `db_dados`.`td_user` to `db_dados`.`tb_user`; -- renomear de um jeito mais completo (sem ficar em negrito na seleção)

alter table tb_user change nome nome_user varchar(150); -- alterar nome da coluna
alter table tb_user add column sexo char(1); -- adiciona uma coluna (ao final)
alter table tb_user drop column sexo; -- apaga uma coluna
alter table tb_user add column sexo char(1) after nome_user; -- adiciona uma coluna após coluna desejada

describe tb_user;

alter table tb_user change nome_user nome_user varchar(100) not null;
alter table tb_user change id id int not null primary KEY;
 
describe tb_user;

insert into tb_user (id,nome_user,data_cadastro,endereco,estado,valor,sexo) values -- Continuação na linha de baixo!
(1,'João de Souza','2024-09-30','Rua 1, número 132, altura do mercado','SP','500','M'), -- Continuação na linha de baixo!!
(2,'Guilherme Augusto','2024-09-30','Rua 34, número 356, altura do mercado','SP','5000','M'), -- Continuação na linha de baixo!!
(3,'Joana da Silva','2024-09-30','Rua 2, número 135, altura do mercado','SP','1000','F'); -- INSERT INTO para adiconar dados fixos na tabela!!!

truncate table tb_user; -- Para limpar os dados inseridos pelo insert into na tabela
select * from tb_user; -- Para mostrar os dados inseridos pelo insert into!!!!
