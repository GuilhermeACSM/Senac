CREATE DATABASE bd_loja_virtual;

CREATE TABLE tb_produtos(
	id_produto INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	produto VARCHAR(200) NOT NULL,
	valor FLOAT(8,2) NOT NULL
);

CREATE TABLE tb_descricoes_tecnicas(
	id_descricao_tecnica INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	id_produto INT NOT NULL,
	descricao_tecnica TEXT NOT NULL,
	FOREIGN KEY(id_produto) REFERENCES tb_produtos(id_produto)
);

INSERT INTO tb_produtos(produto, valor) VALUES 
('Notebook Dell Inspiron Ultrafino Intel Core i7, 16GB RAM e 240GB SSD', 3500.00),
('Smart TV LED 40" Samsung Full HD 2 HDMI 1 USB Wi-Fi Integrado', 1475.54),
('Smartphone LG K10 Dual Chip Android 7.0 4G Wi-Fi Câmera de 13MP', 629.99);


INSERT INTO tb_descricoes_tecnicas(id_produto, descricao_tecnica) VALUES 
(1, 'O novo Inspiron Dell oferece um design elegante e tela infinita que amplia seus sentidos, mantendo a sofisticação e medidas compactas...'),
(2, 'A smart TV da Samsung possui tela de 40" e oferece resolução Full HD, imagens duas vezes melhores que TVs HDs padrão...'),
(3, 'Saia da mesmice. O smartphone LG está mais divertido, rápido, fácil, cheio de selfies e com tela HD de incríveis 5,3"...');

CREATE TABLE tb_imagens (
    id_imagem INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    id_produto INT NOT NULL,
    FOREIGN KEY (id_produto) REFERENCES tb_produtos(id_produto),
    url_imagem VARCHAR(200) NOT NULL
);

INSERT INTO tb_imagens(id_produto, url_imagem) VALUES (1, 'notebook_1.jpg'), (1, 'notebook_2.jpg'),
(1, 'notebook_3.jpg');

INSERT INTO tb_imagens(id_produto, url_imagem) VALUES (2, 'smarttv_1.jpg'), (2, 'smarttv_2.jpg');

INSERT INTO tb_imagens(id_produto, url_imagem) VALUES (3, 'smartphone_1.jpg');


CREATE TABLE tb_clientes(
	id_cliente INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    idade INT (3) NOT NULL
);

CREATE TABLE tb_pedidos(
	id_pedido INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES tb_clientes(id_cliente),
    data_hora DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE tb_pedidos_produtos(
	id_pedido INT NOT NULL,
    id_produto INT NOT NULL,
    FOREIGN KEY(id_pedido) REFERENCES tb_pedidos(id_pedido),
    FOREIGN KEY(id_produto) REFERENCES tb_produtos(id_produto)
);

INSERT INTO tb_clientes(nome, idade) VALUES
('Marcelo', 29),
('Ana Silva', 28),
('Bruno Costa', 34),
('Carla Souza', 22),
('Daniel Oliveira', 45),
('Eduarda Lima', 31),
('Felipe Santos', 29),
('Gabriela Rocha', 27),
('Henrique Alves', 38),
('Isabela Pereira', 24),
('João Mendes', 33),
('Larissa Fernandes', 26),
('Marcos Ribeiro', 40),
('Natalia Castro', 21),
('Otávio Martins', 36),
('Patrícia Gomes', 30);	

select * from tb_produtos LEFT JOIN tb_imagens on (tb_produtos.id_produto = tb_imagens.id_produto);


select * from tb_clientes;
truncate table tb_descricoes_tecnicas;
select * from tb_descricoes_tecnicas;
select * from tb_imagens;


