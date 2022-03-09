use pessoas;
select * from cursos; /*Selecionando toda a tabela*/
select * from pessoa;
alter table pessoa
drop column codigo; /* deletando  a coluna codigo*/

 alter table cursos
 drop column CT; /*Adicionando uma coluna de nome CT*/
/*======================================================================================================================================================*/

insert into cursos   /*inserindo valores */
(idcursos,nome,descricao,carga,toaulas,ano)
values
('4','HTML4','curso de HTML5','40','37','2014'),
('5','Algoritmos','Lógica de programação','20','15','2014');

insert into cursos values            /*inserindo valores */
('6','Photoshp','dicas de photoshop CC','10','8','2014'),
('7','PGP','Curso de PHP para iniciante','40','20','2010'),
('8','jarva','Introdução a Linguagem Java','10','29','2000');
insert into cursos values    /*inserindo valores */
('9','MYSQL','Banco de dados MYSQL','30','15','2016'),
('10','word','curso completo de word','40','30','2016'),
('11','Sapateado','Dança rítmica','40','30','2018');
insert into cursos values  /*inserindo valores */
('12','Cozinha Árabe','Aprenda a fazer Kibe','40','30','2018'),
('13','YOUTUBER','Gerar polêmica e ganhar inscritos','5','2','2018');

select * from cursos;

/*============================================= MODIFICANDO OU ALTERANDO  OS DADOS DENTRO DA TABELA ========================================================*/

update cursos /*Atualize a tabela  cursos  configurando o campo NOME onde  o idcursos é 4 limitando a alteração para uma linha. */
set nome = 'HTML5'
where idcursos = '4'
limit 1;

delete from cursos /* Deletando uma linha da tabela*/
where idcursos = '2'
limit 1;
describe cursos;

update cursos
set nome = 'HTML5'
where idcursos = '4' limit 1;

update cursos
set nome = 'PHP',ano = '2015'
where idcursos = '7'
limit 1;
select * from cursos;

update cursos
set nome = 'linux' where idcursos = '3' limit 1;

update cursos
set nome = 'java', ano = '2015', carga = '40'
where idcursos = '8' 
limit 1;

delete from cursos
where idcursos = '1' limit 1;
 
 select * from cursos;
 
 update cursos
 set ano = '2018' , carga = '0'
 where ano = '2050' limit 2;
 
 update cursos
 set ano = '2050', carga = '800'
 where ano ='2018';
 
 delete from cursos
 where idcursos = '11';
 
 delete from cursos where ano = '2050' limit 1;
 select * from cursos;
 
 truncate table cursos; /*Apaga todos os dados da tabela*/