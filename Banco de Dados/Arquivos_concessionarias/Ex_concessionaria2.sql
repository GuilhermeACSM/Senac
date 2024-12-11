-- Tabela de concessionária exercício
-- TELEFONE DO CLIENTE E VENDEDOR
CREATE TABLE tb_telefone (
    id INT AUTO_INCREMENT PRIMARY KEY,
    telefone VARCHAR(20) NOT NULL
);

-- TB EMAIL DO CLIENTE E VENDEDOR
CREATE TABLE tb_email (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(100) NOT NULL
);

-- TB ENDEREÇO DO CLIENTE E VENDEDOR
CREATE TABLE tb_endereco (
    id INT AUTO_INCREMENT PRIMARY KEY,
    numero INT NOT NULL,
    cidade VARCHAR(50) NOT NULL,
    estado VARCHAR(50),
    rua VARCHAR(100) NOT NULL,
    nacionalidade VARCHAR(50) DEFAULT 'Brasileiro'
);

-- TB DADOS PESSOAIS DO CLIENTE
CREATE TABLE tb_dpClientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_telefone INT NOT NULL,
    id_email INT NOT NULL,
    id_endereco INT NOT NULL,
    nome VARCHAR(70) NOT NULL,
    rg VARCHAR(20) NOT NULL,
    cpf VARCHAR(15) NOT NULL,  -- Alterado para VARCHAR
    data_nacs DATE NOT NULL,
    sexo CHAR(1) NOT NULL,
    FOREIGN KEY (id_telefone) REFERENCES tb_telefone(id),
    FOREIGN KEY (id_email) REFERENCES tb_email(id),
    FOREIGN KEY (id_endereco) REFERENCES tb_endereco(id)
);

-- TB DADOS DOS VENDEDORES
CREATE TABLE tb_vendedores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    salario FLOAT(12,2) NOT NULL,
    id_dpCliente INT NOT NULL,
    FOREIGN KEY (id_dpCliente) REFERENCES tb_dpClientes(id)
);

-- TB DADOS DO CLIENTE
CREATE TABLE tb_clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_dpCliente INT NOT NULL,
    FOREIGN KEY (id_dpCliente) REFERENCES tb_dpClientes(id)
);

-- TB MARCA
CREATE TABLE tb_marcas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(50) NOT NULL
);

-- TB CARRO
CREATE TABLE tb_carros2 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_marca INT NOT NULL,
    modelo VARCHAR(100) NOT NULL,
    ano YEAR NOT NULL,  -- Alterado para YEAR
    cor VARCHAR(50) NOT NULL,
    portas VARCHAR(10) NOT NULL,
    placa VARCHAR(15),
    chassi VARCHAR(17) NOT NULL,
    preco FLOAT(9,2) DEFAULT 0,
    FOREIGN KEY (id_marca) REFERENCES tb_marcas(id)
);

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

-- INSERÇÕES
INSERT INTO tb_telefone (telefone) VALUES
('11987654321'),
('21987654321'),
('31987654321');

INSERT INTO tb_email (email) VALUES
('joao.silva@example.com'),
('maria.oliveira@example.com'),
('carlos.pereira@example.com');

INSERT INTO tb_endereco (numero, cidade, estado, rua) VALUES
(100, 'São Paulo', 'SP', 'Rua A'),
(200, 'Rio de Janeiro', 'RJ', 'Rua B'),
(300, 'Belo Horizonte', 'MG', 'Rua C');

INSERT INTO tb_dpClientes (id_telefone, id_email, id_endereco, nome, rg, cpf, data_nacs, sexo) VALUES
(1, 1, 1, 'João Silva', '123456789', '12345678901', '1985-06-15', 'M'),
(2, 2, 2, 'Maria Oliveira', '987654321', '98765432100', '1990-11-22', 'F'),
(3, 3, 3, 'Carlos Pereira', '111223344', '11122334411', '1978-02-10', 'M');

INSERT INTO tb_clientes (id_dpCliente) VALUES
(1),
(2),
(3);

INSERT INTO tb_vendedores (salario, id_dpCliente) VALUES
(3000.00, 1),
(3500.00, 2);

INSERT INTO tb_marcas(marca) VALUES
('Corolla'),
('Honda'),
('Ford');

INSERT INTO tb_carros2 (id_marca, modelo, ano, cor, portas, placa, preco, chassi) VALUES
(1, 'Corolla', 2020, 'Prata', '4', 'ABC1D23', 85000.00, '1HGBH41JXMN109186'),
(2, 'Civic', 2019, 'Preto', '4', 'XYZ4W56', 95000.00, '1HGCM82633A123456'),
(3, 'Fiesta', 2021, 'Vermelho', '4', 'LMN7O89', 55000.00, '1FADP3F20JL123456');

INSERT INTO tb_vendas (id_carro, id_vendedor, id_cliente, valor) VALUES
(1, 1, 1, 90000.00),
(2, 2, 2, 85000.00);

-- SELECT FINAL
SELECT * FROM tb_dpClientes LEFT JOIN tb_clientes ON (tb_dpClientes.id = tb_clientes.id_dpCliente);

SELECT * FROM tb_dpClientes RIGHT JOIN tb_clientes ON (tb_dpClientes.id = tb_clientes.id_dpCliente);
