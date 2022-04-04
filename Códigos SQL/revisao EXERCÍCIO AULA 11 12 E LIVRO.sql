/* 1: SELECIONE UMA LISTA COM O NOME DE TODAS AS MULHERES*/

select nome from gafanhotos
where sexo = 'F'
order by nome;

/* 2: Uma lista com os dados de todos aqueles que nasceram entre 01-01-2000
e 31-12-2015*/

select * from gafanhotos
where nascimento between '2000-01-01'and '2015-12-31'
order by nascimento asc;

/*3: Uma lista com os dados de todos as mulheres que naceram no brasil e que tem seu nome iniciado com
letra j*/

select * from gafanhotos
where sexo = 'F' and nacionalidade = 'Brasil' 
and nome like'J%'
order by nome;

/*4:  Uma lista com o nome e nacionalidade de todos os homens que tem silva no nome, não
 nasceram no brasil e pesam menos de 100kg*/
 
 select nome,nacionalidade from gafanhotos
 where sexo = 'M' and nome like '%silva%'and nacionalidade <> 'Brasil' and peso <'100' order by nome;
 
 /*5: Qual é a maior altura entre os gafanhotos homens que moram no brasil*/
 
 select max(altura) from gafanhotos
 where sexo ='M' and nacionalidade = 'Brasil' order by nome;
 
 /* 6: Qual é a média de peso de todos os gafanhtos cadastrados*/
 
 select avg(peso) from gafanhotos;
 
 /*7: Qual é o menor peso entre as mulheres que nasceram fora do brasil e entre 01/01/1990 e 31/12/2000 */
 
 select min(peso) from gafanhotos
 where sexo = 'F' and nascimento between '1990-01-01' and '2000-12-31' and nacionalidade <> 'brasil';
 
 /*8: quantas mulheres tem mais de 1.90m de altura*/
 
 select nome,altura from gafanhotos
 where sexo = 'F' and altura > '1.90' order by nome;
 
/* Uma lista com todos os nomes dos homens que trabalha como programador */

select nome,profissao from gafanhotos where sexo = 'M' and profissao ='programador' order by nome asc;

/* 10: Uma lista com as profissoes dos gafanhotos e seus respectivos quantitativos*/

select profissao,count(*) from gafanhotos
group by profissao;

/*11: Quantos homens e quantas mulheres nasceram após 01-01-2005*/

select sexo,count(*),nascimento from gafanhotos
where nascimento > '2005-01-01'
group by sexo;

/*12: Uma lista com os gafanhotos que  nasceram fora do brasil, mostrando o pais de origem e o total de pessoas
nascidas lá.Só nos interessamos países que tiverem mais de 3 gafanhotos com essa nacionalidade */

select nacionalidade,count(*) from gafanhotos
where nacionalidade <> 'Brasil' group by nacionalidade having count(*) > '3';

/*13: Uma lista agrupada pela altura dos gafanhotos,mostrando quantas pessoas pesam mais de 100kg
e que estão acima da média de altura de todos os cadastrados*/
 
 select avg(altura) from gafanhotos; # média avg(altura)
 
select altura,count(*) from gafanhotos
where peso > '100'
group by altura
having altura >(select avg(altura) from gafanhotos);

# exercícios do livro SQL=============================================================================================================================

/*14 RENOMEIE A TABELA PARA CLIENTE, APÓS ISSO faça uma lista para obter todos os id da tabela cliente*/

alter table gafanhotos
rename to cliente;

select id  from cliente;

/*15 uma lista com todas as nacionalidades da tabela cliente. Porém só as nacionalidades distintas, não pode haver nacionalidades repetidas*/
 # select nacionalidade from cliente;
select distinct nacionalidade from cliente;

/*16: Ecreva uma instrução SQL que obtenha todas as colunas da tabela  cliente, e uma isntrução alternativa 
que obtenha apenas id do cliente pós isso use comentários para comentar  uma das instruções select  de modo que sóuma seja executada*/

#select* from cliente;
select id from cliente;

/* 17: Escreva uma instrução SQL para obter todos os nomes da tabela  cliente e exiba os resultados de A a Z */
select nome from cliente
order by nome asc;

/*18: Escreva uma instrução SQL para obter o id do cliente e o nome do cliente, e os ordene primeiro
pelo id e depois pelo nome*/

select id,nome from cliente order by id,nome;


/*19: Escreva uma estrução SQL para exibir  os cursos com maior carga horária e números de aulas,
classificando  primeiro pela maior carga e depois pelo maior numero de aulas*/

select nome,carga,totaulas from cursos order by carga desc,totaulas desc;
