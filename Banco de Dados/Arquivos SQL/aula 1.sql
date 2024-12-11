create database if not exists db_dados;
use db_dados;
drop database db_dados;
create table tb_cliente (
id int not null,
nome varchar(50) not null,
data_cadastro date not null,
endereco text,
estado char(2),
ativo boolean default true,
valor float(8,2) default 0
);
drop table tb_cliente;
rename table tb_cliente to tb_colaborador;
-- comentário
rename table `db_dados`.`tb_colaborador` to `db_dados`.`tb_funcionario`;
alter table tb_funcionario add column sexo1 char(1) after id;
alter table tb_funcionario drop sexo1;
describe tb_funcionario;
alter table tb_funcionario change nome_func nome_func varchar(150) not null;
-- novo comentário
-- teste
insert into tb_funcionario (id, nome_func, data_cadastro, endereco, estado, valor, sexo) values
 (2,'Jose de Souza','2024-11-30', 'Rua 2, número 200 casa 5', 'SP', '1500.05','M' ),
 (3,'Maria de Souza','2023-07-25', 'Rua 7, número 117, apto 25', 'SP', '700.094','F' )
 ;
 select * from tb_funcionario;
 
 select id,nome_func from tb_funcionario;
 
 
 
 
 
 
