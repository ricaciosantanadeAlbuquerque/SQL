select * from cursos;
select * from gafanhotos;
describe cursos;
describe gafanhotos;

select * from cursos
order by nome;

select * from cursos 
order by nome desc;

select * from cursos order by nome asc;

select nome, carga,ano from cursos
order by ano,nome;

select * from cursos
where ano = '2016'
order by idcurso,nome;

select nome,carga from cursos
where ano = 2016
order by nome;

select nome,descricao,ano from cursos
where ano <='2015' order by ano,nome;

select nome,ano from cursos
where ano between '2014' and '2016' order by ano desc,nome;

select nome,ano from cursos
where ano between '2017' and '2018'order by ano;
select * from cursos;

select nome,totaulas from cursos
where totaulas between '15' and 37
order by totaulas;

select nome,descricao,ano from cursos
where ano in(2014,2016) order by ano;

select nome,carga, totaulas from cursos
where carga > '35' and totaulas <30;

select nome,carga,totaulas,count(*) from cursos
where ano ='2017' and carga > '30' and totaulas > '10' group by carga;

select * from cursos
where nome = 'php';

select nome from cursos
where nome like 'p%';

select * from cursos
where nome like 'a%';

select * from cursos
where nome like '%a';

select * from cursos
where nome like '%a%';

select * from cursos
where nome  not like '%a%';

update cursos
set nome = 'páOO' where idcurso = '9';
Select * from cursos;

select * from cursos
where nome like '%á%';

update cursos set nome = 'POO' where idcurso =9;

select * from cursos;

select * from cursos
where nome like 'PH%P';

select * from cursos
where nome like 'PH%P%';

select * from cursos
where nome like 'ph%p_';

select * from cursos
where nome like 'p__t%';

select * from gafanhotos
where nome like '%silva%';

select  distinct nacionalidade from gafanhotos order by nacionalidade;

select carga from cursos
order by carga;

select distinct carga from cursos;

select carga,count(*) from cursos
group by carga;

select count(*) from cursos where carga > 40;

select count(nome) from cursos;

select max(carga) from cursos;

select max(totaulas) from cursos;

select nome,min(totaulas) from cursos;
select nome,max(totaulas) from cursos;

select count(totaulas) from cursos;

select sum(totaulas) from cursos;

select * from cursos where ano ='2016';

select sum(totaulas) from cursos where ano =2016;

select avg(carga) from cursos;
select avg(totaulas) from cursos;

