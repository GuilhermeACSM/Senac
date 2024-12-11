select * from Carros;
select * from Carros where ano>=2020 and id>2;

select * from Carros where ano>=2020 or id>2;

select * from Carros where ano in(2018,2021);

select * from Carros where ano not in(2018,2021);

select * from Carros where ano between 2018 and 2021;

select * from Carros where ano not between 2018 and 2021;

select * from Carros where modelo="maverick";

select * from Carros where modelo like 'y%';

select * from Carros where marca like '%oyo%';

select * from Carros where ano between 2018 and 2021 order by ano desc;

select * from Carros where ano between 2018 and 2021 order by marca ,ano desc;

select * from Carros where ano between 2018 and 2021 order by marca ,ano desc limit 5;

select * from Carros where ano between 2018 and 2021 order by marca ,ano desc limit 2 offset 2;
