create database db_concessionaria1;

create table tb_dpCliente (
	id_dpCliente int auto_increment primary key,
    nome varchar(70) not null,
    rg varchar(15) not null,
    cpf varchar(11) not null,
    data_nasc date not null,
    sexo char(1) not null
);

create table tb_telefone (
	id_telefone int auto_increment primary key,
    telefone varchar(15) not null,
    id_dpCliente int not null,
    foreign key (id_dpCliente) references tb_dpCliente(id_dpCliente)
);

create table tb_email (
	id_email int auto_increment primary key,
    email varchar(30) not null,
    id_dpCliente int not null,
    foreign key (id_dpCliente) references tb_dpCliente(id_dpCliente)
);

create table tb_endereco (
	id_endereco int auto_increment primary key,
    rua varchar(40) not null,
    estado varchar(30) not null,
    pais varchar(30) not null,
    id_dpCliente int not null,
    foreign key (id_dpCliente) references tb_dpCliente(id_dpCliente)
);


create table tb_funcionario (
	id_funcionario int auto_increment primary key,
    salario float(8,2) not null,
    id_dpCliente int not null,
	foreign key (id_dpCliente) references tb_dpCliente(id_dpCliente)
);

create table tb_cargo (
	id_cargo int auto_increment primary key,
    cargo varchar(30) not null,
    id_funcionario int not null,
    foreign key (id_funcionario) references tb_funcionario(id_funcionario)
);

create table tb_cliente (
	id_cliente int auto_increment primary key,
    data_ultimaCompra date not null,
    id_dpCliente int not null,
    foreign key (id_dpCliente) references tb_dpCliente(id_dpCliente)
);

create table tb_marca (
	id_marca int auto_increment primary key,
    marca varchar(20) not null
);

create table tb_carro (
	id_carro int auto_increment primary key,
    modelo varchar(30) not null,
    ano date not null,
    cor varchar(25) not null,
    portas varchar(10) not null,
    chassi varchar(20) not null,
    preco float(8,2) not null,
    id_marca int not null,
    foreign key (id_marca) references tb_marca(id_marca)
);

create table tb_venda (
	id_venda int auto_increment primary key,
    data_horaVenda timestamp not null,
    valor float(8,2) not null,
    id_carro int not null,
    id_funcionario int not null,
    id_cliente int not null,
    foreign key (id_carro) references tb_carro(id_carro),
    foreign key (id_cliente) references tb_cliente(id_cliente),
	foreign key (id_funcionario) references tb_funcionario(id_funcionario)
);

-- DADOS PESSOAIS CLIENTES
INSERT INTO tb_dpCliente (id_dpCliente, nome, rg, cpf, data_nasc, sexo) VALUES
(1, 'Carlos Silva', '12345678', 12345678901, '1980-01-15', 'M'),
(2, 'Ana Maria Souza', '98765432', 98765432101, '1992-03-23', 'F'),
(3, 'Pedro Santos', '45678912', 45678912301, '1985-07-19', 'M'),
(4, 'Mariana Lopes', '85214796', 85214796301, '1990-12-11', 'F'),
(5, 'José Almeida', '74185296', 74185296301, '1978-09-04', 'M'),
(6, 'Rita Pereira', '36985214', 36985214701, '1991-02-10', 'F'),
(7, 'Lucas Oliveira', '14785236', 14785236901, '1988-06-15', 'M'),
(8, 'Paulo Santos', '96325874', 96325874101, '1985-11-27', 'M'),
(9, 'Maria Clara', '75395146', 75395146501, '1990-04-30', 'F'),
(10, 'Juliana Araújo', '35795182', 35795182601, '1994-08-20', 'F'),
(11, 'Gabriel Costa', '65478932', 65478932101, '1987-05-18', 'M'),
(12, 'Fernando Gomes', '95175346', 95175346801, '1975-10-25', 'M'),
(13, 'Bianca Ribeiro', '24689751', 24689751201, '1993-11-15', 'F'),
(14, 'Renato Medeiros', '98765401', 98765401201, '1981-09-19', 'M'),
(15, 'Camila Ferreira', '32165498', 32165498701, '1989-03-30', 'F'),
(16, 'Ricardo Lima', '15975328', 15975328401, '1986-02-22', 'M'),
(17, 'Sônia Dias', '65432198', 65432198701, '1995-07-12', 'F'),
(18, 'João Nogueira', '78965412', 78965412301, '1972-06-28', 'M'),
(19, 'Letícia Macedo', '85296314', 85296314701, '1991-11-01', 'F'),
(20, 'Thiago Barros', '14725836', 14725836901, '1980-01-25', 'M'),
(21, 'Eduardo Fonseca', '65498731', 65498731201, '1983-10-09', 'M'),
(22, 'Patrícia Lima', '95165472', 95165472301, '1990-08-14', 'F'),
(23, 'Vitor Martins', '78912365', 78912365401, '1985-12-03', 'M'),
(24, 'Fernanda Rocha', '96314785', 96314785201, '1993-05-28', 'F'),
(25, 'Roberto Cunha', '35724698', 35724698101, '1978-04-07', 'M'),
(26, 'Helena Carvalho', '74196358', 74196358201, '1994-02-17', 'F'),
(27, 'Carlos Brito', '85214732', 85214732601, '1986-11-21', 'M'),
(28, 'Renata Pires', '96385274', 96385274101, '1991-06-11', 'F'),
(29, 'Luís Antunes', '14725839', 14725839101, '1987-07-20', 'M'),
(30, 'Juliana Melo', '85296341', 85296341701, '1993-10-05', 'F'),
(31, 'Daniel Ferreira', '32145687', 32145687901, '1979-09-13', 'M'),
(32, 'Flávia Lopes', '98745632', 98745632101, '1990-05-26', 'F'),
(33, 'Marcelo Souza', '75395182', 75395182701, '1983-12-08', 'M'),
(34, 'Simone Braga', '15975348', 15975348701, '1992-07-22', 'F'),
(35, 'Augusto Mendes', '35795184', 35795184101, '1974-11-15', 'M'),
(36, 'Bruna Teixeira', '65498732', 65498732101, '1995-06-30', 'F'),
(37, 'Júlio César', '95175324', 95175324601, '1981-04-29', 'M'),
(38, 'Andréa Torres', '35712369', 35712369401, '1989-08-19', 'F'),
(39, 'Henrique Matos', '74196328', 74196328501, '1986-03-17', 'M'),
(40, 'Sérgio Moreira', '15975349', 15975349601, '1978-09-23', 'M'),
(41, 'Larissa Soares', '75395128', 75395128701, '1990-12-14', 'F'),
(42, 'Fábio Lima', '65412398', 65412398701, '1983-11-11', 'M'),
(43, 'Cláudia Ramos', '95135768', 95135768401, '1992-02-18', 'F'),
(44, 'Renato Lemos', '78965473', 78965473201, '1985-06-27', 'M'),
(45, 'Nathália Cruz', '75385219', 75385219701, '1994-01-13', 'F'),
(46, 'Leandro Prado', '96325814', 96325814701, '1987-10-08', 'M'), -- A PARTIR DAQUI SÃO PESSOAS QUE TRABALHAM NA CONCESSIONARIA
(47, 'Paula Freitas', '45698712', 45698712301, '1990-09-16', 'F'),
(48, 'Rafael Campos', '14796385', 14796385201, '1982-03-21', 'M'),
(49, 'Tatiane Ferreira', '36925814', 36925814701, '1996-08-10', 'F'),
(50, 'Gustavo Martins', '85236914', 85236914701, '1990-12-20', 'M');


-- TELEFONES
INSERT INTO tb_telefone (id_telefone, telefone, id_dpCliente) VALUES
(1, '11987654321', 1),
(2, '21987654322', 2),
(3, '31987654323', 3),
(4, '41987654324', 4),
(5, '51987654325', 5),
(6, '61987654326', 6),
(7, '71987654327', 7),
(8, '81987654328', 8),
(9, '91987654329', 9),
(10, '10987654320', 10),
(11, '11987654330', 11),
(12, '21987654331', 12),
(13, '31987654332', 13),
(14, '41987654333', 14),
(15, '51987654334', 15),
(16, '61987654335', 16),
(17, '71987654336', 17),
(18, '81987654337', 18),
(19, '91987654338', 19),
(20, '10987654339', 20),
(21, '11987654340', 21),
(22, '21987654341', 22),
(23, '31987654342', 23),
(24, '41987654343', 24),
(25, '51987654344', 25),
(26, '61987654345', 26),
(27, '71987654346', 27),
(28, '81987654347', 28),
(29, '91987654348', 29),
(30, '10987654349', 30),
(31, '11987654350', 31),
(32, '21987654351', 32),
(33, '31987654352', 33),
(34, '41987654353', 34),
(35, '51987654354', 35),
(36, '61987654355', 36),
(37, '71987654356', 37),
(38, '81987654357', 38),
(39, '91987654358', 39),
(40, '10987654359', 40),
(41, '11987654360', 41),
(42, '21987654361', 42),
(43, '31987654362', 43),
(44, '41987654363', 44),
(45, '51987654364', 45),
(46, '61987654365', 46),
(47, '71987654366', 47),
(48, '81987654367', 48),
(49, '91987654368', 49),
(50, '10987654369', 50);
INSERT INTO tb_telefone (id_telefone, telefone, id_dpCliente) VALUES
(51, '91987654368', 50); -- adicionando telefone a mais no cliente!!!!!!!

-- MOSTRAR OS TELEFONES DOS CLIENTES
select tb_dpCliente.nome , tb_telefone.telefone from tb_dpCliente inner join tb_telefone on (tb_dpCliente.id_dpCliente = tb_telefone.id_dpCliente); -- select


-- EMAILS
INSERT INTO tb_email (id_email, email, id_dpCliente) VALUES
(1, 'carlos.silva@example.com', 1),
(2, 'ana.maria@example.com', 2),
(3, 'pedro.santos@example.com', 3),
(4, 'mariana.lopes@example.com', 4),
(5, 'jose.almeida@example.com', 5),
(6, 'rita.pereira@example.com', 6),
(7, 'lucas.oliveira@example.com', 7),
(8, 'paulo.santos@example.com', 8),
(9, 'maria.clara@example.com', 9),
(10, 'juliana.araujo@example.com', 10),
(11, 'gabriel.costa@example.com', 11),
(12, 'fernando.gomes@example.com', 12),
(13, 'bianca.ribeiro@example.com', 13),
(14, 'renato.medeiros@example.com', 14),
(15, 'camila.ferreira@example.com', 15),
(16, 'ricardo.lima@example.com', 16),
(17, 'sonia.dias@example.com', 17),
(18, 'joao.nogueira@example.com', 18),
(19, 'leticia.macedo@example.com', 19),
(20, 'thiago.barros@example.com', 20),
(21, 'eduardo.fonseca@example.com', 21),
(22, 'patricia.lima@example.com', 22),
(23, 'vitor.martins@example.com', 23),
(24, 'fernanda.rocha@example.com', 24),
(25, 'roberto.cunha@example.com', 25),
(26, 'helena.carvalho@example.com', 26),
(27, 'carlos.brito@example.com', 27),
(28, 'renata.pires@example.com', 28),
(29, 'luis.antunes@example.com', 29),
(30, 'juliana.melo@example.com', 30),
(31, 'daniel.ferreira@example.com', 31),
(32, 'flavia.lopes@example.com', 32),
(33, 'marcelo.souza@example.com', 33),
(34, 'simone.braga@example.com', 34),
(35, 'augusto.mendes@example.com', 35),
(36, 'bruna.teixeira@example.com', 36),
(37, 'julio.cesar@example.com', 37),
(38, 'andrea.torres@example.com', 38),
(39, 'henrique.matos@example.com', 39),
(40, 'sergio.moreira@example.com', 40),
(41, 'larissa.soares@example.com', 41),
(42, 'fabio.lima@example.com', 42),
(43, 'claudia.ramos@example.com', 43),
(44, 'renato.lemos@example.com', 44),
(45, 'nathalia.cruz@example.com', 45),
(46, 'leandro.prado@example.com', 46),
(47, 'paula.freitas@example.com', 47),
(48, 'rafael.campos@example.com', 48),
(49, 'maria.luiza@example.com', 49),
(50, 'joana.silva@example.com', 50),
 -- ADICIONANDO EMAIL A MAIS NO PRIMEIRO CLIENTE!!!!!
(51, 'carlos.silva@gmail.com', 1);

-- MOSTRA O EMAIL DOS CLIENTES
select tb_dpCliente.nome , tb_email.email from tb_dpCliente inner join tb_email on (tb_dpCliente.id_dpCliente = tb_email.id_dpCliente);

-- ENDEREÇOS
INSERT INTO tb_endereco (id_endereco, rua, estado, pais, id_dpCliente) VALUES
(1, 'Rua A, 123', 'São Paulo', 'Brasil', 1),
(2, 'Rua B, 456', 'Rio de Janeiro', 'Brasil', 2),
(3, 'Rua C, 789', 'Minas Gerais', 'Brasil', 3),
(4, 'Rua D, 101', 'Bahia', 'Brasil', 4),
(5, 'Rua E, 202', 'Rio Grande do Sul', 'Brasil', 5),
(6, 'Rua F, 303', 'Ceará', 'Brasil', 6),
(7, 'Rua G, 404', 'Pernambuco', 'Brasil', 7),
(8, 'Rua H, 505', 'Paraná', 'Brasil', 8),
(9, 'Rua I, 606', 'Distrito Federal', 'Brasil', 9),
(10, 'Rua J, 707', 'Espírito Santo', 'Brasil', 10),
(11, 'Rua K, 808', 'São Paulo', 'Brasil', 11),
(12, 'Rua L, 909', 'Rio de Janeiro', 'Brasil', 12),
(13, 'Rua M, 1234', 'Minas Gerais', 'Brasil', 13),
(14, 'Rua N, 5678', 'Bahia', 'Brasil', 14),
(15, 'Rua O, 1357', 'Rio Grande do Sul', 'Brasil', 15),
(16, 'Rua P, 2468', 'Ceará', 'Brasil', 16),
(17, 'Rua Q, 3579', 'Pernambuco', 'Brasil', 17),
(18, 'Rua R, 4680', 'Paraná', 'Brasil', 18),
(19, 'Rua S, 5791', 'Distrito Federal', 'Brasil', 19),
(20, 'Rua T, 6802', 'Espírito Santo', 'Brasil', 20),
(21, 'Rua U, 7913', 'São Paulo', 'Brasil', 21),
(22, 'Rua V, 8024', 'Rio de Janeiro', 'Brasil', 22),
(23, 'Rua W, 9135', 'Minas Gerais', 'Brasil', 23),
(24, 'Rua X, 0246', 'Bahia', 'Brasil', 24),
(25, 'Rua Y, 1357', 'Rio Grande do Sul', 'Brasil', 25),
(26, 'Rua Z, 2468', 'Ceará', 'Brasil', 26),
(27, 'Rua AA, 3579', 'Pernambuco', 'Brasil', 27),
(28, 'Rua AB, 4680', 'Paraná', 'Brasil', 28),
(29, 'Rua AC, 5791', 'Distrito Federal', 'Brasil', 29),
(30, 'Rua AD, 6802', 'Espírito Santo', 'Brasil', 30),
(31, 'Rua AE, 7913', 'São Paulo', 'Brasil', 31),
(32, 'Rua AF, 8024', 'Rio de Janeiro', 'Brasil', 32),
(33, 'Rua AG, 9135', 'Minas Gerais', 'Brasil', 33),
(34, 'Rua AH, 0246', 'Bahia', 'Brasil', 34),
(35, 'Rua AI, 1357', 'Rio Grande do Sul', 'Brasil', 35),
(36, 'Rua AJ, 2468', 'Ceará', 'Brasil', 36),
(37, 'Rua AK, 3579', 'Pernambuco', 'Brasil', 37),
(38, 'Rua AL, 4680', 'Paraná', 'Brasil', 38),
(39, 'Rua AM, 5791', 'Distrito Federal', 'Brasil', 39),
(40, 'Rua AN, 6802', 'Espírito Santo', 'Brasil', 40),
(41, 'Rua AO, 7913', 'São Paulo', 'Brasil', 41),
(42, 'Rua AP, 8024', 'Rio de Janeiro', 'Brasil', 42),
(43, 'Rua AQ, 9135', 'Minas Gerais', 'Brasil', 43),
(44, 'Rua AR, 0246', 'Bahia', 'Brasil', 44),
(45, 'Rua AS, 1357', 'Rio Grande do Sul', 'Brasil', 45),
(46, 'Rua AT, 2468', 'Ceará', 'Brasil', 46),
(47, 'Rua AU, 3579', 'Pernambuco', 'Brasil', 47),
(48, 'Rua AV, 4680', 'Paraná', 'Brasil', 48),
(49, 'Rua AW, 5791', 'Distrito Federal', 'Brasil', 49),
(50, 'Rua AX, 6802', 'Espírito Santo', 'Brasil', 50);

-- MOSTRA O ENDEREÇO DOS CLIENTES
select tb_dpCliente.nome , tb_endereco.rua from tb_dpCliente inner join tb_endereco on (tb_dpCliente.id_dpCliente = tb_endereco.id_dpCliente);
select tb_dpCliente.nome , tb_endereco.estado from tb_dpCliente inner join tb_endereco on (tb_dpCliente.id_dpCliente = tb_endereco.id_dpCliente);
select tb_dpCliente.nome , tb_endereco.pais from tb_dpCliente inner join tb_endereco on (tb_dpCliente.id_dpCliente = tb_endereco.id_dpCliente);
select tb_dpCliente.nome , tb_endereco.id_endereco from tb_dpCliente inner join tb_endereco on (tb_dpCliente.id_dpCliente = tb_endereco.id_dpCliente);
-- PEGANDO TODOS OS DADOS DAS TABELAS!!!
select tb_dpCliente.nome , tb_endereco.* from tb_dpCliente inner join tb_endereco on (tb_dpCliente.id_dpCliente = tb_endereco.id_dpCliente);


-- VENDEDOR && CARGO 
insert into tb_funcionario (id_funcionario, salario , id_dpCliente) VALUES
(1,8000,46),
(2,4000,47),
(3,2000,48),
(4,3000,49),
(5,2000,50);


insert into tb_cargo (id_cargo, cargo , id_funcionario) VALUES
('1','Vendedor','1'),
('2','Vendedor','2'),
('3','Faxineiro','3'),
('4','Faxineiro','4'),
('5','Gerente','5');

-- CLIENTES
INSERT INTO tb_cliente (id_cliente, data_ultimaCompra, id_dpCliente) VALUES
(1, '2023-09-01', 1),
(2, '2023-09-15', 2),
(3, '2023-08-10', 3),
(4, '2023-07-05', 4),
(5, '2023-09-22', 5),
(6, '2023-06-30', 6),
(7, '2023-09-12', 7),
(8, '2023-08-08', 8),
(9, '2023-07-25', 9),
(10, '2023-06-15', 10),
(11, '2023-09-01', 11),
(12, '2023-08-29', 12),
(13, '2023-07-18', 13),
(14, '2023-09-03', 14),
(15, '2023-06-27', 15),
(16, '2023-09-10', 16),
(17, '2023-08-20', 17),
(18, '2023-07-22', 18),
(19, '2023-09-18', 19),
(20, '2023-08-12', 20),
(21, '2023-07-07', 21),
(22, '2023-06-22', 22),
(23, '2023-09-14', 23),
(24, '2023-08-17', 24),
(25, '2023-09-06', 25),
(26, '2023-07-02', 26),
(27, '2023-09-20', 27),
(28, '2023-08-15', 28),
(29, '2023-07-28', 29),
(30, '2023-06-19', 30),
(31, '2023-09-08', 31),
(32, '2023-08-03', 32),
(33, '2023-07-13', 33),
(34, '2023-06-25', 34),
(35, '2023-09-11', 35),
(36, '2023-08-21', 36),
(37, '2023-07-30', 37),
(38, '2023-06-10', 38),
(39, '2023-09-02', 39),
(40, '2023-08-06', 40),
(41, '2023-07-20', 41),
(42, '2023-09-17', 42),
(43, '2023-06-28', 43),
(44, '2023-08-19', 44),
(45, '2023-09-05', 45),
(46, '2023-07-15', 46),
(47, '2023-09-09', 47),
(48, '2023-08-13', 48),
(49, '2023-07-24', 49),
(50, '2023-06-18', 50);


INSERT INTO tb_marca (id_marca, marca) VALUES 
(1, 'Fiat'),
(2, 'Ford'),
(3, 'Chevrolet'),
(4, 'Hyundai'),
(5, 'Volkswagen'),
(6, 'Renault'),
(7, 'Toyota'),
(8, 'Honda'),
(9, 'Nissan'),
(10, 'Jeep');


INSERT INTO tb_carro (id_carro, modelo, ano, cor, portas, chassi, preco, id_marca) VALUES
(1, 'Fiat Uno', '2023-01-01', 'Vermelho', 4, '12345678901234567', 25000.00, 1),
(2, 'Ford Ka', '2022-03-15', 'Azul', 4, '23456789012345678', 30000.00, 2),
(3, 'Chevrolet Onix', '2021-07-21', 'Prata', 4, '34567890123456789', 45000.00, 3),
(4, 'Hyundai HB20', '2020-05-10', 'Branco', 4, '45678901234567890', 35000.00, 4),
(5, 'Volkswagen Gol', '2019-11-11', 'Preto', 4, '56789012345678901', 20000.00, 5),
(6, 'Renault Sandero', '2018-06-30', 'Cinza', 4, '67890123456789012', 28000.00, 6),
(7, 'Toyota Corolla', '2017-09-12', 'Verde', 4, '78901234567890123', 60000.00, 7),
(8, 'Honda Civic', '2016-02-28', 'Amarelo', 4, '89012345678901234', 55000.00, 8),
(9, 'Nissan March', '2015-04-25', 'Rosa', 4, '90123456789012345', 27000.00, 9),
(10, 'Jeep Renegade', '2014-12-10', 'Marrom', 4, '01234567890123456', 80000.00, 10),
(11, 'Fiat Toro', '2013-08-05', 'Azul', 4, '12345098765432109', 90000.00, 1),
(12, 'Ford Fiesta', '2012-03-19', 'Vermelho', 4, '23456098765432108', 32000.00, 2),
(13, 'Chevrolet Cruze', '2011-10-11', 'Prata', 4, '34567098765432107', 48000.00, 3),
(14, 'Hyundai Tucson', '2010-11-09', 'Branco', 4, '45678098765432106', 37000.00, 4),
(15, 'Volkswagen Jetta', '2009-05-20', 'Preto', 4, '56789098765432105', 29000.00, 5),
(16, 'Renault Duster', '2008-01-15', 'Cinza', 4, '67890098765432104', 26000.00, 6),
(17, 'Toyota Etios', '2007-07-07', 'Verde', 4, '78901098765432103', 22000.00, 7),
(18, 'Honda Fit', '2006-09-23', 'Amarelo', 4, '89012098765432102', 32000.00, 8),
(19, 'Nissan Kicks', '2005-12-05', 'Rosa', 4, '90123098765432101', 42000.00, 9),
(20, 'Jeep Compass', '2004-08-18', 'Marrom', 4, '01234098765432100', 78000.00, 10),
(21, 'Fiat Mobi', '2003-04-14', 'Azul', 4, '12345012345098765', 24000.00, 1),
(22, 'Ford Ecosport', '2002-11-02', 'Vermelho', 4, '23456012345098764', 33000.00, 2),
(23, 'Chevrolet S10', '2001-06-21', 'Prata', 4, '34567012345098763', 57000.00, 3),
(24, 'Hyundai Creta', '2000-09-10', 'Branco', 4, '45678012345098762', 37000.00, 4),
(25, 'Volkswagen Saveiro', '1999-03-08', 'Preto', 4, '56789012345098761', 28000.00, 5),
(26, 'Renault Kwid', '1998-12-24', 'Cinza', 4, '67890012345098760', 22000.00, 6),
(27, 'Toyota Hilux', '1997-07-12', 'Verde', 4, '78901012345098759', 96000.00, 7),
(28, 'Honda HR-V', '1996-05-26', 'Amarelo', 4, '89012012345098758', 42000.00, 8),
(29, 'Nissan Versa', '1995-03-15', 'Rosa', 4, '90123012345098757', 27000.00, 9),
(30, 'Jeep Wrangler', '1994-10-31', 'Marrom', 4, '01234012345098756', 89000.00, 10),
(31, 'Fiat Argo', '1993-01-05', 'Azul', 4, '12345023456098765', 25000.00, 1),
(32, 'Ford Ranger', '1992-11-29', 'Vermelho', 4, '23456023456098764', 47000.00, 2),
(33, 'Chevrolet Celta', '1991-07-08', 'Prata', 4, '34567023456098763', 21000.00, 3),
(34, 'Hyundai i30', '1990-05-12', 'Branco', 4, '45678023456098762', 31000.00, 4),
(35, 'Volkswagen Fox', '1989-08-25', 'Preto', 4, '56789023456098761', 20000.00, 5),
(36, 'Renault Captur', '1988-04-03', 'Cinza', 4, '67890023456098760', 37000.00, 6),
(37, 'Toyota Prius', '1987-12-18', 'Verde', 4, '78901023456098759', 82000.00, 7),
(38, 'Honda CR-V', '1986-10-14', 'Amarelo', 4, '89012023456098758', 45000.00, 8),
(39, 'Nissan Sentra', '1985-02-26', 'Rosa', 4, '90123023456098757', 27000.00, 9),
(40, 'Jeep Cherokee', '1984-06-07', 'Marrom', 4, '01234023456098756', 68000.00, 10),
(41, 'Fiat Siena', '1983-09-09', 'Azul', 4, '12345034567098765', 22000.00, 1),
(42, 'Ford Edge', '1982-03-17', 'Vermelho', 4, '23456034567098764', 53000.00, 2),
(43, 'Chevrolet Blazer', '1981-12-22', 'Prata', 4, '34567034567098763', 29000.00, 3),
(44, 'Hyundai Santa Fe', '1980-07-31', 'Branco', 4, '45678034567098762', 49000.00, 4),
(45, 'Volkswagen Amarok', '1979-10-20', 'Preto', 4, '56789034567098761', 57000.00, 5),
(46, 'Renault Logan', '1978-05-19', 'Cinza', 4, '67890034567098760', 23000.00, 6),
(47, 'Toyota Yaris', '1977-01-27', 'Verde', 4, '78901034567098759', 43000.00, 7),
(48, 'Honda City', '1976-09-30', 'Amarelo', 4, '89012034567098758', 38000.00, 8),
(49, 'Nissan X-Trail', '1975-06-16', 'Rosa', 4, '90123034567098757', 33000.00, 9),
(50, 'Jeep Gladiator', '1974-11-06', 'Marrom', 4, '01234034567098756', 74000.00, 10);



INSERT INTO tb_venda (id_venda, data_horaVenda, valor, id_carro, id_funcionario, id_cliente) VALUES
(1, '2024-10-01 10:00:00', 24000.00, 23, 1, 1),
(2, '2024-10-01 11:00:00', 33000.00, 7, 2, 2),
(3, '2024-10-01 12:00:00', 48000.00, 45, 1, 3),
(4, '2024-10-01 13:00:00', 55000.00, 12, 2, 4),
(5, '2024-10-01 14:00:00', 20000.00, 3, 1, 5),
(6, '2024-10-01 15:00:00', 27000.00, 36, 2, 6),
(7, '2024-10-01 16:00:00', 90000.00, 1, 1, 7),
(8, '2024-10-01 17:00:00', 22000.00, 50, 2, 8),
(9, '2024-10-01 18:00:00', 32000.00, 19, 1, 9),
(10, '2024-10-01 19:00:00', 37000.00, 34, 2, 10),
(11, '2024-10-02 10:00:00', 48000.00, 29, 1, 11),
(12, '2024-10-02 11:00:00', 90000.00, 6, 2, 12),
(13, '2024-10-02 12:00:00', 55000.00, 15, 1, 13),
(14, '2024-10-02 13:00:00', 24000.00, 38, 2, 14),
(15, '2024-10-02 14:00:00', 31000.00, 8, 1, 15),
(16, '2024-10-02 15:00:00', 42000.00, 4, 2, 16),
(17, '2024-10-02 16:00:00', 89000.00, 22, 1, 17),
(18, '2024-10-02 17:00:00', 60000.00, 32, 2, 18),
(19, '2024-10-02 18:00:00', 22000.00, 18, 1, 19),
(20, '2024-10-02 19:00:00', 35000.00, 26, 2, 20),
(21, '2024-10-03 10:00:00', 47000.00, 30, 1, 21),
(22, '2024-10-03 11:00:00', 31000.00, 39, 2, 22),
(23, '2024-10-03 12:00:00', 80000.00, 11, 1, 23),
(24, '2024-10-03 13:00:00', 38000.00, 40, 2, 24),
(25, '2024-10-03 14:00:00', 30000.00, 13, 1, 25),
(26, '2024-10-03 15:00:00', 52000.00, 35, 2, 26),
(27, '2024-10-03 16:00:00', 24000.00, 5, 1, 27),
(28, '2024-10-03 17:00:00', 42000.00, 44, 2, 28),
(29, '2024-10-03 18:00:00', 33000.00, 24, 1, 29),
(30, '2024-10-03 19:00:00', 58000.00, 2, 2, 30),
(31, '2024-10-04 10:00:00', 27000.00, 25, 1, 31),
(32, '2024-10-04 11:00:00', 45000.00, 28, 2, 32),
(33, '2024-10-04 12:00:00', 31000.00, 48, 1, 33),
(34, '2024-10-04 13:00:00', 25000.00, 42, 2, 34),
(35, '2024-10-04 14:00:00', 68000.00, 10, 1, 35),
(36, '2024-10-04 15:00:00', 96000.00, 20, 2, 36),
(37, '2024-10-04 16:00:00', 55000.00, 14, 1, 37),
(38, '2024-10-04 17:00:00', 45000.00, 16, 2, 38),
(39, '2024-10-04 18:00:00', 37000.00, 49, 1, 39),
(40, '2024-10-04 19:00:00', 89000.00, 33, 2, 40),
(41, '2024-10-05 10:00:00', 32000.00, 17, 1, 41),
(42, '2024-10-05 11:00:00', 24000.00, 41, 2, 42),
(43, '2024-10-05 12:00:00', 30000.00, 46, 1, 43),
(44, '2024-10-05 13:00:00', 42000.00, 37, 2, 44),
(45, '2024-10-05 14:00:00', 52000.00, 47, 1, 45),
(46, '2024-10-05 15:00:00', 68000.00, 9, 2, 46),
(47, '2024-10-05 16:00:00', 27000.00, 43, 1, 47),
(48, '2024-10-05 17:00:00', 50000.00, 15, 2, 48),
(49, '2024-10-05 18:00:00', 33000.00, 27, 1, 49),
(50, '2024-10-05 19:00:00', 45000.00, 8, 2, 50);



drop table tb_venda;
drop table tb_carro;
drop table tb_marca;
drop table tb_vendedor;
drop table tb_cargo;


select * from tb_venda;
select * from tb_carro;
select * from tb_cliente;
select * from tb_marca;
select * from tb_dpCliente;
select * from tb_vendedor;
select * from tb_cargo;
select * from tb_telefone;
select * from tb_email;
select * from tb_endereco;

