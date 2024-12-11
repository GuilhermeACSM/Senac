use db_dados;

CREATE TABLE Carros (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Marca VARCHAR(50) not null,
    Modelo VARCHAR(50) not null,
    Ano INT not null,
    Preco DECIMAL(10, 2));
    
    describe Carros;

INSERT INTO Carros (Marca, Modelo, Ano, Preco) VALUES
('Toyota', 'Corollal', 2024, 85000.00),
('Honda', 'Civic', 2018, 90000.00),
('Ford', '1', 2022, 300000.00),
('Chevrolet', 'Onix', 2016, 45000.00);

select * from Carros;
select modelo,  ano from Carros;

delete from carros where id=2;

INSERT INTO Carros (Marca, Modelo, Ano, Preco) VALUES
('Toyota', 'yaris', 2020, 85000.00);

truncate carros;

delete from carros where id>=1;
update carros set modelo = 'Maverick', ano=1970 where id = 3;







