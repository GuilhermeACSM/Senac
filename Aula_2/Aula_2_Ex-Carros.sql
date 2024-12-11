-- CRIANDO UMA TABELA PARA CARRO
create table tb_carros (
id int auto_increment primary key,
marca varchar(50) not null,
modelo varchar(100) not null,
ano date not null,
preco float(9,2) default 0
);

alter table tb_carros add column cor varchar(50); -- Adicionando coluna na tabela!!
alter table tb_carros add column portas varchar(10); -- Adicionando coluna na tabela!! 

drop table tb_carros; -- Para limpar a tabela toda!!!
alter table tb_carros change ano ano int not null; -- Mudando os type da coluna da tabela!!
describe tb_carros; -- Mostrar a descrição da tabela!!

insert into tb_carros (id,marca,modelo,ano,preco) values -- Continuação na linha de baixo!
(1,'Toyota','Corolla','2020','85000'), -- Continuação na linha de baixo!
(2,'Honda','Civic','2019','90000'), -- Continuação na linha de baixo!
(3,'Ford','Mustang','2021','300000'), -- Continuação na linha de baixo!
(4,'Chevrolet','Onix','2018','45000');  -- INSERT INTO para adiconar dados fixos na tabela!!!

-- Para atualizar um dado específico da tabela!!!
update tb_carros set cor='Vermelho', portas='4' where id between 1 and 100; -- Atualiza os dados com id de 1 até 100
update tb_carros set cor='Rosa', portas='4' where id=1;-- Atualiza dados somente da id=1
update tb_carros set cor='Preto', portas='4' where id=2; -- Atualiza dados somente da id=2
update tb_carros set cor='Verde', portas='4' where id=3; -- Atualiza dados somente da id=3
update tb_carros set cor='Amarelo', portas='4' where id=4; -- Atualiza dados somente da id=4

select * from tb_carros where id=1; -- Para mostrar um dado específico na tabela(Insert into)!!!
select marca, cor from tb_carros; -- Para mostrar os dados inseridos pelo insert into!!!
select * from tb_carros; -- Para mostrar os dados inseridos pelo insert into!!!

truncate table tb_carros; -- Para limpar os dados inseridos pelo insert into na tabela!!!
delete from tb_carros where id=2; -- Para apagar uma certa linha dos dados insert!!!