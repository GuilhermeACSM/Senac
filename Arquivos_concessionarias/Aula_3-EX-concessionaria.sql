-- Tabela de concessionaria exercício
-- TELEFONE DO CLIENTE E VENDEDOR
CREATE TABLE tb_telefone(
	id int auto_increment primary key,
	telefone varchar(20) not null
);
drop table tb_telefone;

-- TB EMAIL DO CLIENTE E VENDEDOR
CREATE TABLE tb_email(
	id int auto_increment primary key,
	email varchar(100) not null
);
drop table tb_email;

-- TB ENDEREÇO DO CLIENTE E VENDEDOR
CREATE TABLE tb_endereco (
	id int auto_increment primary key,
	numero int not null,
	cidade varchar(50) not null,
	estado varchar(50),
	rua varchar(100) not null,
	nacionalidade varchar(50) default "Brasileiro"
);
drop table tb_endereco;

-- TB DADOS PESSOAIS DO CLIENTE
create table tb_dpClientes (
	id int auto_increment primary key,
	id_telefone int not null,
	id_email int not null,
	id_endereco int not null,
	nome varchar(70) not null,
	rg varchar(20) not null,
	cpf int not null,
	data_nacs date not null,
	sexo char(1) not null,
	foreign key (id_telefone) references tb_telefone(id),
	foreign key (id_email) references tb_email(id),
	foreign key (id_endereco) references tb_endereco(id)
);
drop table tb_dpClientes;

-- TB DADOS DOS VENDEDORES
CREATE TABLE tb_vendedores (
	id INT AUTO_INCREMENT PRIMARY KEY,
	salario float(12,2) not null,
	id_dpCliente int not null,
	foreign key (id_dpCliente) references tb_dpClientes(id)
);
drop table tb_vendedores;

-- TB DADOS DO CLIENTE
CREATE TABLE tb_clientes (
	id INT AUTO_INCREMENT PRIMARY KEY,
	id_dpCliente int not null,
	foreign key (id_dpCliente) references tb_dpClientes(id)
);
drop table tb_cliente;

-- TB MARCA
create table tb_marcas (
	id int auto_increment primary key,
	marca varchar(50) not null
);
drop table tb_marcas;

-- TB CARRO
create table tb_carros2 (
	id int auto_increment primary key,
    id_marca int not null,
	modelo varchar(100) not null,
	ano date not null,
	cor varchar(50) not null,
	portas varchar(10) not null,
	placa varchar(15),
	chassi varchar(17) not null,
	preco float(9,2) default 0,
    FOREIGN KEY (id_marca) references tb_marcas(id)
);
drop table tb_carros2;

-- TB VENDA FINAL
CREATE TABLE tb_vendas (
	id INT AUTO_INCREMENT PRIMARY KEY,
	id_carro INT NOT NULL,
	id_vendedor INT NOT NULL,
	id_cliente INT NOT NULL,
	data_venda DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	valor FLOAT(12,2) NOT NULL,
	FOREIGN KEY (id_carro) REFERENCES tb_carros2(id),
	FOREIGN KEY (id_vendedor) REFERENCES tb_vendedores(id),
	FOREIGN KEY (id_cliente) REFERENCES tb_clientes(id)
);
drop table tb_vendas;

-- DESCRIBES DA TABELAS
describe tb_telefone;
describe tb_email;
describe tb_endereco;
describe tb_dpclientes;
describe tb_vendedores;
DESCRIBE tb_clientes;
DESCRIBE tb_marcas;
describe tb_carros2;
describe tb_vendas;

-- TB TELEFONE
INSERT INTO tb_telefone (telefone) VALUES
('11987654321'),
('21987654321'),
('31987654321');
select * from tb_telefone;

-- TB EMAIL
INSERT INTO tb_email (email) VALUES
('joao.silva@example.com'),
('maria.oliveira@example.com'),
('carlos.pereira@example.com');
select * from tb_email;

-- TB ENDEREÇO
INSERT INTO tb_endereco (numero, cidade, estado, rua) VALUES
(100, 'São Paulo', 'SP', 'Rua A'),
(200, 'Rio de Janeiro', 'RJ', 'Rua B'),
(300, 'Belo Horizonte', 'MG', 'Rua C');
select * from tb_endereco;

-- TB DADOS PESSOAIS DO CLIENTE
INSERT INTO tb_dpClientes (id_telefone, id_email, id_endereco, nome, rg, cpf, data_nacs, sexo) VALUES
(1, 1, 1, 'João Silva', '123456789', 12345678901, '1985-06-15', 'M'),
(2, 2, 2, 'Maria Oliveira', '987654321', 98765432100, '1990-11-22', 'F'),
(3, 3, 3, 'Carlos Pereira', '111223344', 11122334411, '1978-02-10', 'M');
select * from tb_dpclientes;

-- TB CLIENTES
INSERT INTO tb_clientes (id_dpCliente) VALUES
(1),
(2),
(3);
select * from tb_clientes;

-- TB VENDEDORES
INSERT INTO tb_vendedores (salario, id_dpCliente) VALUES
(3000.00, 1),
(3500.00, 2);
select * from tb_vendedores;

-- TB MARCAS
INSERT INTO tb_marcas(marca) VALUES
('Corolla'),
('Honda'),
('Ford');
select * from tb_marcas;

-- TB CARROS
INSERT INTO tb_carros2 (id_marca, modelo, ano, cor, portas, placa, preco, chassi) VALUES
('1', 'Corolla', '2020-01-01', 'Prata', '4', 'ABC1D23', 85000.00, '1HGBH41JXMN109186'),
('2', 'Civic', '2019-01-01', 'Preto', '4', 'XYZ4W56', 95000.00, '1HGCM82633A123456'),
('3', 'Fiesta', '2021-01-01', 'Vermelho', '4', 'LMN7O89', 55000.00, '1FADP3F20JL123456');
select * from tb_carros2;

-- TB VENDA FINAL
INSERT INTO tb_vendas (id_carro, id_vendedor, id_cliente, valor) VALUES
(1, 1, 1, 90000.00),
(2, 2, 2, 85000.00);
select * from tb_vendas;

SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE tb_vendas;
TRUNCATE TABLE tb_carros2;
TRUNCATE TABLE tb_marcas;
TRUNCATE TABLE tb_vendedores;
TRUNCATE TABLE tb_clientes;
TRUNCATE TABLE tb_dpClientes;
TRUNCATE TABLE tb_endereco;
TRUNCATE TABLE tb_email;
TRUNCATE TABLE tb_telefone;
SET FOREIGN_KEY_CHECKS = 1;


select * from tb_dpClientes left join tb_vendas on (tb_dpClientes.id = tb_clientes.id_dpCliente);

