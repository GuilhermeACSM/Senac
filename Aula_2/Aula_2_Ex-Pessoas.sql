create table tb_pessoas(
id int auto_increment primary key,
nome varchar(100) not null, 
profissao varchar(60) not null,
data_nasc date not null,
sexo char(1) not null,
peso float(5,2) not null,
altura float(5) not null,
nacionalidade varchar(50) not null default 'Brasil'
);

drop table tb_pessoas;
describe tb_pessoas;

INSERT INTO tb_pessoas (id, nome, profissao, data_nasc, sexo, peso, altura, nacionalidade) VALUES
(1, 'Ana Silva', 'Engenheira', '1990-05-12', 'F', 65, 1.70, default),
(2, 'João Santos', 'Médico', '1985-03-22', 'M', 75, 1.80, default),
(3, 'Maria Oliveira', 'Professora', '1978-11-30', 'F', 60, 1.60, default),
(4, 'Pedro Ferreira', 'Advogado', '1992-07-15', 'M', 82, 1.75, default),
(5, 'Clara Costa', 'Designer', '1988-01-05', 'F', 55, 1.65,  default),
(6, 'Lucas Almeida', 'Programador', '1995-09-10', 'M', 70, 1.78,  default),
(7, 'Sarah Johnson', 'Bióloga', '1991-04-18', 'F', 58, 1.62, 'Estados Unidos'),
(8, 'David Smith', 'Engenheiro', '1982-12-01', 'M', 90, 1.82, 'Estados Unidos'),
(9, 'Emma Brown', 'Enfermeira', '1987-06-25', 'F', 62, 1.67, 'Estados Unidos'),
(10, 'Carlos Ruiz', 'Chef', '1990-08-14', 'M', 80, 1.76, 'Espanha'),
(11, 'Lucia Garcia', 'Farmacêutica', '1984-11-03', 'F', 54, 1.60, 'Espanha'),
(12, 'Marco Silva', 'Artista', '1995-01-20', 'M', 68, 1.74, 'Itália'),
(13, 'Giulia Rossi', 'Jornalista', '1993-10-12', 'F', 59, 1.65, 'Itália'),
(14, 'Hiroshi Tanaka', 'Engenheiro', '1980-05-29', 'M', 70, 1.70, 'Japão'),
(15, 'Aiko Yamamoto', 'Designer', '1994-07-16', 'F', 50, 1.58, 'Japão'),
(16, 'Olga Ivanova', 'Cientista', '1988-03-30', 'F', 64, 1.68, 'Rússia'),
(17, 'Dmitry Petrov', 'Programador', '1992-09-24', 'M', 78, 1.80, 'Rússia'),
(18, 'Fatima Al-Mansoori', 'Professora', '1991-02-12', 'F', 66, 1.62, 'Emirados Árabes Unidos'),
(19, 'Omar Al-Farsi', 'Engenheiro', '1985-06-18', 'M', 80, 1.75, 'Emirados Árabes Unidos'),
(20, 'Priya Sharma', 'Psicóloga', '1990-12-11', 'F', 58, 1.64, 'Índia'),
(21, 'Raj Patel', 'Médico', '1983-01-05', 'M', 72, 1.77, 'Índia'),
(22, 'Chloe Martin', 'Advogada', '1995-08-27', 'F', 63, 1.69, 'Canadá'),
(23, 'Liam Thompson', 'Engenheiro', '1987-04-22', 'M', 85, 1.80, 'Canadá'),
(24, 'Sofia García', 'Tradutora', '1992-10-10', 'F', 57, 1.63, 'México'),
(25, 'Alejandro Jiménez', 'Designer', '1989-03-15', 'M', 76, 1.77, 'México'),
(26, 'Beatriz Fernández', 'Professora', '1994-01-09', 'F', 65, 1.70, 'Chile'),
(27, 'Rodrigo Pereira', 'Engenheiro', '1980-11-29', 'M', 88, 1.82, 'Chile'),
(28, 'Nia Nkosi', 'Cientista', '1993-05-06', 'F', 62, 1.65, 'África do Sul'),
(29, 'Sipho Moyo', 'Médico', '1986-09-15', 'M', 70, 1.72, 'África do Sul'),
(30, 'Mei Lin', 'Professora', '1991-07-04', 'F', 50, 1.55, 'China'),
(31, 'Chen Wei', 'Engenheiro', '1984-02-18', 'M', 77, 1.78, 'China'),
(32, 'Isabella Rossi', 'Arquiteta', '1992-10-30', 'F', 61, 1.68, 'Itália'),
(33, 'Niko Petrov', 'Estudante', '1996-03-17', 'M', 73, 1.76, 'Rússia'),
(34, 'Lila Becker', 'Psicóloga', '1989-11-22', 'F', 59, 1.62, 'Alemanha'),
(35, 'Max Müller', 'Engenheiro', '1982-08-05', 'M', 80, 1.83, 'Alemanha'),
(36, 'Elena Ivanova', 'Artista', '1995-12-02', 'F', 58, 1.65, 'Rússia'),
(37, 'Simon Chang', 'Programador', '1990-09-13', 'M', 72, 1.80, 'China'),
(38, 'Ingrid Nielsen', 'Designer', '1988-06-30', 'F', 55, 1.67, 'Dinamarca'),
(39, 'Lars Jørgensen', 'Engenheiro', '1991-04-19', 'M', 79, 1.81, 'Dinamarca'),
(40, 'Amina Ait Kaddour', 'Tradutora', '1993-01-15', 'F', 60, 1.64, 'Marrocos'),
(41, 'Hassan Boulahdour', 'Professor', '1984-02-29', 'M', 68, 1.75, 'Marrocos'),
(42, 'Sophia Müller', 'Médica', '1990-03-07', 'F', 63, 1.70, 'Alemanha'),
(43, 'Viktor Karpov', 'Cientista', '1981-09-01', 'M', 85, 1.82, 'Rússia'),
(44, 'Lara Mendes', 'Engenheira', '1987-07-23', 'F', 67, 1.69,  default),
(45, 'Amir Hassan', 'Arquiteto', '1995-11-11', 'M', 74, 1.78, 'Egito'),
(46, 'Nadya Sokolova', 'Bióloga', '1992-08-15', 'F', 55, 1.65, 'Rússia'),
(47, 'Samuel Kim', 'Engenheiro', '1994-12-05', 'M', 80, 1.80, 'Coreia do Sul'),
(48, 'Ji-woo Park', 'Designer', '1989-02-19', 'F', 50, 1.58, 'Coreia do Sul'),
(49, 'Aria Thompson', 'Psicóloga', '1993-10-29', 'F', 57, 1.60, 'Estados Unidos'),
(50, 'Amir Saeed', 'Médico', '1980-04-02', 'M', 75, 1.72, 'Palestina');

select * from tb_pessoas where sexo = 'M';
select * from tb_pessoas where sexo = 'F';

select * from tb_pessoas where nome like '%a';
select * from tb_pessoas where nome like 'a%' order by data_nasc;
select * from tb_pessoas where nome like '%a%' order by data_nasc desc;

select * from tb_pessoas where profissao = 'médico' order by data_nasc;


truncate table tb_pessoas; 
select * from tb_pessoas;