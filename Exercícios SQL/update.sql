
update cursos
set nome = 'HTML5'
where idcursos = '1';

select * from cursos;

update cursos
set nome ='PHP',ano = '2015'
where idcursos = '4';

select * from cursos;

update cursos
set nome = 'java', carga = '40',totaulas = '30', ano = 2015
where idcursos = '5'
limit 1;

update cursos
set ano = '2050', carga = '800'
where ano = '2018';

select * from cursos;

update cursos
set ano = '2018', carga =  '40'
where ano = '2050'
limit 1;

select * from cursos;

delete from cursos
where idcursos = '8';

select * from cursos;

update cursos
set descricao = 'curso de java Orientado a Objetos'
where idcursos = '11'
limit 1;


delete from cursos
where ano = '2050' limit 2;

/*Deletando os dados da tabela*/
truncate table cursos;
select * from cursos;
