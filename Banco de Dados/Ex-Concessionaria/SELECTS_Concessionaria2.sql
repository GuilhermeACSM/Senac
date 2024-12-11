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


-- MOSTRA O EMAIL DOS CLIENTES
select tb_dpCliente.nome , tb_email.email from tb_dpCliente inner join tb_email on (tb_dpCliente.id_dpCliente = tb_email.id_dpCliente);


-- MOSTRA O ENDEREÇO DOS CLIENTES
select tb_dpCliente.nome , tb_endereco.rua from tb_dpCliente inner join tb_endereco on (tb_dpCliente.id_dpCliente = tb_endereco.id_dpCliente);
select tb_dpCliente.nome , tb_endereco.estado from tb_dpCliente inner join tb_endereco on (tb_dpCliente.id_dpCliente = tb_endereco.id_dpCliente);
select tb_dpCliente.nome , tb_endereco.pais from tb_dpCliente inner join tb_endereco on (tb_dpCliente.id_dpCliente = tb_endereco.id_dpCliente);
select tb_dpCliente.nome , tb_endereco.id_endereco from tb_dpCliente inner join tb_endereco on (tb_dpCliente.id_dpCliente = tb_endereco.id_dpCliente);
-- PEGANDO TODOS OS DADOS DAS TABELAS!!!
select tb_dpCliente.nome , tb_endereco.* from tb_dpCliente inner join tb_endereco on (tb_dpCliente.id_dpCliente = tb_endereco.id_dpCliente);


-- NOME DO VENDEDOR E SEU SALARIO
select tb_dpcliente.nome, tb_funcionario.salario from tb_dpcliente inner join tb_funcionario on (tb_dpCliente.id_dpCliente = tb_funcionario.id_dpCliente);
-- BUSCA O ID DO VENDEDOR E COLOCA O CARGO DELE
select tb_vendedor.id_funcionario, tb_cargo.cargo from tb_funcionario inner join tb_cargo on (tb_vendedor.id_vendedor = tb_cargo.id_vendedor);

-- BUSCA O NOME DO VENDEDOR E COLOCA O CARGO DELE
SELECT tb_dpCliente.nome, tb_cargo.cargo FROM tb_vendedor INNER JOIN tb_dpCliente ON (tb_funcionario.id_dpCliente = tb_dpCliente.id_dpCliente) INNER JOIN tb_cargo ON (tb_funcionario.id_funcionario = tb_cargo.id_funcionario);

-- Seleciona somente os carros com essa marca
SELECT tb_carro.* FROM tb_carro INNER JOIN tb_marca ON tb_carro.id_marca = tb_marca.id_marca WHERE tb_marca.marca = 'Toyota';
SELECT tb_carro.*, tb_marca.marca FROM tb_carro INNER JOIN tb_marca ON tb_carro.id_marca = tb_marca.id_marca WHERE tb_marca.marca = 'Toyota';



-- Carros abaixo desse ano
select * from tb_carro where ano < '2020-01-01';

-- MOSTRAR OS TELEFONES DOS CLIENTES
select tb_dpCliente.nome , tb_telefone.telefone from tb_dpCliente inner join tb_telefone on (tb_dpCliente.id_dpCliente = tb_telefone.id_dpCliente); -- select


SELECT tb_carro.modelo, tb_dpCliente.nome FROM tb_venda INNER JOIN tb_carro ON tb_venda.id_carro = tb_carro.id_carro INNER JOIN tb_marca ON tb_carro.id_marca = tb_marca.id_marca INNER JOIN tb_cliente ON tb_venda.id_cliente = tb_cliente.id_cliente INNER JOIN tb_dpCliente ON tb_cliente.id_dpCliente = tb_dpCliente.id_dpCliente;


-- Select Vendedor e Carro
SELECT 
    tb_carro.modelo,
    tb_dpCliente.nome AS nome_vendedor
FROM 
    tb_venda
JOIN 
    tb_carro ON tb_venda.id_carro = tb_carro.id_carro
JOIN 
    tb_funcionario ON tb_venda.id_funcionario = tb_funcionario.id_funcionario
JOIN 
    tb_dpCliente ON tb_funcionario.id_dpCliente = tb_dpCliente.id_dpCliente
JOIN 
    tb_cargo ON tb_funcionario.id_funcionario = tb_cargo.id_funcionario
WHERE 
    tb_cargo.cargo = 'Vendedor';


SELECT -- cliente e modelo
    tb_carro.modelo,
    tb_dpCliente.nome AS nome_cliente
FROM 
    tb_venda
JOIN 
    tb_carro ON tb_venda.id_carro = tb_carro.id_carro
JOIN 
    tb_cliente ON tb_venda.id_cliente = tb_cliente.id_cliente
JOIN 
    tb_dpCliente ON tb_cliente.id_dpCliente = tb_dpCliente.id_dpCliente;

