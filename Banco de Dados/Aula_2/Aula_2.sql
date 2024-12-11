select * from tb_carros;

select * from tb_carros where ano >= 2020 and id > 2; -- Ele tem que satisfazer as duas condições para aparecer na tabela!!!
select * from tb_carros where ano >= 2020 or id > 2; -- Ele tem que satisfazer uma das duas condições para aparecer na tabela!!!

select * from tb_carros where ano in(2020,2018); -- Ele pega todos que tem a condição escrita!!!
select * from tb_carros where ano not in(2020,2018); -- Ele pega todos que não tem a condição escrita!!!

select * from tb_carros where ano between 2019 and 2021; -- Pega todos que estão entre as condições!!
select * from tb_carros where ano not between 2019 and 2021; -- Pega todos que estão fora das condições!!

select * from tb_carros where modelo='Corolla'; -- Mostra todos que tem a condicao modelo = corolla!!!

select * from tb_carros where modelo like '%a'; -- Pega todos que acabam com a letra A!!!
select * from tb_carros where modelo like 'c%'; -- Pega todos que começam com a letra C no modelo!!!
select * from tb_carros where modelo like '%a%'; -- Pega todos que tenham a letra A no modelo!!!

select * from tb_carros where ano between 2018 and 2021 order by ano; -- Mostra por ordem Crescente!!!
select * from tb_carros where ano between 2018 and 2021 order by ano desc; -- Mostra por ordem Decrescente!!!

 -- Organiza primeiro em ordem alfabética, pra se tiver um com a mesma marca ele puxa o ano e coloca o menor primeiro!!!
select * from tb_carros where ano between 2018 and 2021 order by marca, ano; -- Crescente!!
select * from tb_carros where ano between 2018 and 2021 order by marca desc, ano desc; -- Decrescente!!

select * from tb_carros where ano between 2018 and 2021 order by marca desc, ano desc limit 2; -- Colocar um limite no final para mostrar somente a quantidade do limite!!!
select * from tb_carros where ano between 2018 and 2021 order by marca desc, ano desc limit 2 offset 1; -- Sempre irá pegar o número depois do (offset = 1) e vai mostrar somente dois pois o limit = 2!!



