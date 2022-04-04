select * from gafanhotos;
/*Exercício 1 uma lista com o nome de todas as mulhres */

select nome from gafanhotos where sexo = 'F';

/*Exercíco 2 uma lista com os dados de todos aqueles que nasceram entre 1/jan/2000 e 31/dez/2015*/

select * from gafanhotos
where nascimento between '2000-01-01' and '2015-12-31'; 

/*Exercício 3: uma lista com o nome de todos os homens que trabalham como programadores */

select nome from gafanhotos
where sexo ='M' and profissao ='programador'; /*Selecione o 'nome' da tabela gafanhotos onde o 'sexo' é igual a 'M' é a profissao é igual a programador */

/*Tirando a prova !!*/
select nome,profissao,sexo from gafanhotos
where sexo = 'M' and profissao = 'programador';

/*Exercício 4: uma lista com os dados de todas as mulheres que nasceram no brasil e que têm seu nome iniciando com a letra J*/

select * from gafanhotos
where sexo = 'F' and nacionalidade = 'Brasil' and nome like 'j%';

/* Exercício 5: Uma lista com o nome e a nacionalidade de todos os  homens que têm silva no nome,
não nasceram no brasil e pesam menos de 100k */

select * from gafanhotos;

select nome,nacionalidade from gafanhotos
where sexo = 'M' and nome like '%Silva%' and nacionalidade != 'Brasil' and peso <100; 
/*Selecione toda a tabela gafanhoto onde o sexo é igual 'F' e a nacionalidade é igual 'Brasil' e o nome é parecido começando com 'j' 
e terminando com alguma coisa inclusive nada  */

/*Exercício 6: qual é a maior altura entre gafanhotos homens que moram no brasil? */
select * from gafanhotos;

select max(altura) from gafanhotos
where sexo= 'M' and nacionalidade = 'Brasil';

/*Exercício 7: a média de peso de todos os gafanhotos cadastrados ? */
 select avg(peso) from gafanhotos;
 
 /*Exercício 8: qual é o menor peso entre as gafanhotos mulheres que nasceram fora do brasil entre 01/jan/1990 e 31/dez/2000*/
	
    select min(peso) from gafanhotos
    where sexo = 'F' and nacionalidade != 'Brasil' and nascimento between '1990-01-01' and '2000-12-31';
    
    update gafanhotos
    set peso = '23'
    where id = '62' limit 1;
 /*Exercício 9: quantas gafanhotos mulheres têm mais de 1.90m de altura? */
 
 select count(*) from gafanhotos
 where sexo = 'F' and altura > '1.90';