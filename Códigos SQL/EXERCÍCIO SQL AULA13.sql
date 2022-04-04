select  * from gafanhotos;
/*1: Uma lista com as profissões dos gafanhotos e seus respectivos quantitativos*/
select profissao, count(*) from gafanhotos
group by profissao order by count(*)desc;

/*Quantos gafanhotos homens e quantos mulheres nasceram após 01jan/2005*/

select sexo,count(*) from gafanhotos
where nascimento > '2005-01-01'
group by sexo;

/*Uma lista comos gafanhotos que nasceram fora do brasil, mostrando o país de origem e o total de pessoas
nascidas lá. só nos interessam os países que tiverem mais de 3 gafanhotos com essas nacionalidade */

select * from gafanhotos;

select nacionalidade,count(*) from gafanhotos
 where nacionalidade <> 'Brasil'
 group by nacionalidade
 having count(*) > '3';