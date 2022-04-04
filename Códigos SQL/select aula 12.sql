
select * from cursos;
select * from gafanhotos;
describe cursos;
describe gafanhotos;

select * from cursos
where nome = 'PHP'; /* Selecione  toda a tabela  cursos  e motre a linha cuja o valor  no campo nome é PHP*/

select * from cursos
where nome ='php';

select * from cursos
where nome ='php';

/*O Uso  do comando like (parecido) */

select * from cursos
where nome like'P%'; /* Selecione toda tabela cursos onde o nome é parecido com 'P' e termina com alguma coisa inclusive nada % */

select * from cursos 
where nome like 'a%';/*Selecione toda tabela cursos onde o nome é parecido com 'a' e termina com alguma coisa inclusive nada % */

select * from cursos  /*Selecione toda a tabela cursos onde o nome é parecido com alguma coisa inclusive nada '%' e termina com 'a'*/
where nome like '%a';

select * from cursos
where nome like '%A%'; /* Começa com alguma coisa inclusive nada '%'  tem 'A' em alguma parte e termina com alguma coisa '%' inclusive nada */

 select *  from cursos
 where nome  not like '%A%'; /* nome não é parecido  começa com alguma  coisa '%' NÃO TEM 'A' EM NEMUMA PARTE  DO NOME  e termina com alguma coisa '%'*/

update cursos /*Atualize a tabela cursos */
set nome = 'PáOO' /*Configurando nome para 'PáOO' */
where idcurso = '9' /* Onde o idcursos é igual a 9 */
limit 1; /*Limitado por 1*/

select * from cursos;

update cursos set nome = 'POO' where idcurso = '9'limit 1;

select * from cursos 
where nome like 'PH%P';/* nome like ==parecido com 'PH' tem alguma coisa inclusive nada '%' e termina  com 'P' */

select * from cursos 
where nome like 'PH%P%';
/*Quero um nome que tem 'j' em qualquer parte da palavra */
select * from cursos 
where nome like '%J%';

/*Não quero 'j'  em nem uma parte do nome */
 select * from cursos 
 where nome not like '%j%';

select * from cursos
where nome like 'ph%p_'; /* nome começa com 'ph' tem alguma coisa inclusive nada '%' depois tem 'p' e termina obrigatoriamente  com alguma ou letra  valor '_'*/

/*==========distinct===================*/

select * from gafanhotos;

select nacionalidade from gafanhotos; /* Neste caso os dados nacionalidade virão repetidos, para distinguir usa-seo  'distinct' */

select distinct nacionalidade  from gafanhotos order by nome; /*Todos os valores repetidos foram eliminados*/

select carga from cursos  /*Sem distinct */
order by carga;
/* nomes com distinção sem repetição */

select distinct carga from cursos order by carga ; /*Com distinct*/

select distinct nome from cursos order by nome;

/*========================= função de Agregacao======================================*/

select count(*) from cursos; /*Contou a quantidade de registros da tabela cursos */

select * from cursos;

 Select count(*) from cursos where carga > 40 ; /*Ele irá contar 'count' quantas linhas possuem no campo carga o valor maior do que 40 horas*/
 
 select carga  from cursos
 where carga > '40' order by carga ;

select count(nome) from cursos; /*Contou a quantidade de nomes */

 select * from cursos;
 
select count(carga), count(totaulas) from cursos;

select carga from cursos order by carga asc; /*menor 10 mior 60*/

select max(carga) from cursos;/*60*/

select max(totaulas) from cursos  where ano = '2016'; /* selecione da tabela cursos do ano de 2016 o máximo de total de aulas*/

/*Minimo de aulas*/

select nome,min(totaulas) from cursos where ano ='2016';

select min(carga) from cursos;
select max(carga) from cursos;
select count(carga) from cursos; /*30 linhas*/

 /*Função sum() soma os registros */
 
 select * from cursos;
 select * from cursos where ano = '2016';
 select sum(totaulas) from cursos where ano = '2016';
 
select sum(carga) from cursos;
select sum(idcurso) from cursos;

 /*AVG() essa função traz a média dos valores */

select avg(totaulas) from cursos where ano = '2016'; /*Selecione da tabela cursos onde o ano e 2016 a média do total de aulas*/

select avg(carga) from cursos;

select avg(ano) from cursos;
 