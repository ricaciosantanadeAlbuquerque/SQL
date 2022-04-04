describe cursos; /* Descrever a estrutura  da tabela cursos*/
describe gafanhotos;

select * from cursos; /* Seleciona toda a tabela  cursos*/
select * from gafanhotos;
/*Selecionando toda a tabela"cursos", e ordenando pelo campo nome em ordem alfabetica */

select * from cursos
order by nome;
/* selecionando toda a tabela "Cursos" ordenado o campo nome em ordem alfabetica descrescente!! */

select * from cursos
order by nome desc;
/*selecionando toda a tabela "Cursos" ordenado o campo nome em ordem alfabetica ascendente*/

select * from cursos
order by nome asc;

/* Filtrando os dados pelos campos */

select nome,carga,ano from cursos /*Selecione os campos "nome,carga,ano" da tabela cursos  e ordene esse valos pelo campo "nome" em ordem alfabetica */
order by nome; 

/*ordenação multipla*/
/* só será visualizado os campos (ano,carga,nome) esses valores serão ordenados pelo "ano" e depois pelo "nome"*/
select ano,carga,nome from cursos
order by ano,nome;

/*Filtrando por linhas*/

select * from cursos;
/*Utilizando a clausula "where" podemos filtrar por linhas */

select * from cursos
where ano = '2016' order by nome; /*Só serão visualizados as linhas onde o ano é igual a 2016 */

/* filtrando por colunas e linhas */

select nome,descricao,carga from cursos
where ano = 2016
order by nome asc;

/*Mostrando os registros  do campo "nome" e do "campo" descricao no ano de 2015 ou antes */

select nome,descricao from cursos
where ano <= 2015 order by nome;

select nome,descricao,ano from cursos
where ano <= '2015'
order by ano,nome; /*Ordenando primeiro pelo "ano" depois  pelo "nome" */

/*between significa entre */
select nome,ano from cursos
where ano between 2014 and 2016; /*serão mostrados valores entre 2014 e 2016 */

select * from cursos;

select carga,totaulas,ano from cursos
where ano between 2010 and 2018 order by ano;

/* "in" == e mostre os valores que são exatamente () o between trabalha com faixas de valores já o "in" mostra exatamente os valores () */

select nome,descricao,ano from cursos
where ano in(2014,2016) order by ano,nome;

/*operadores lógicos */

select nome,carga,totaulas from cursos
where carga > 35 and totaulas <30   /*serão mostrados os valores com carga maior que 35 e totaulas menor do que 30*/
order by nome; /* ordernados pelo campo nome  em ordem alfabetica */

select nome,carga,totaulas from cursos
where carga > 35 and totaulas < 30 ; /* Sem ordenação*/
