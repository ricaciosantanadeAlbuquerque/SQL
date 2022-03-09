use pessoas;
select * from cursos;
select * from pessoa;
describe cursos;
describe pessoa;

alter table pessoa
add column endereço varchar(20);
select *from pessoa;

alter table pessoa  /*ALTERE A TABLE PESSOA LARGANDO OU EXCLUINDO  A COLUNA ENDEREÇO */
drop column endereço;

select * from pessoa;

alter table pessoa
add column endereço varchar(20) first;

alter table pessoa
drop column endereço;

alter table pessoa
add column endereço varchar(20) after nome;

/*MODIFICANDO O TIPO  E A CAPACIDADE  DA COLUNA ENDEREÇO */

alter table pessoa
modify column endereço varchar(30) first; /*REGRA FIRST ou primeiro */

select * from pessoa;
describe pessoa;
/* COMO PODE SER NOTADO,  TANTO A CAPACIDADE  QUANTO  A POSIÇÃO DA COLUNA FORAM ALTERADOS 
*/
/*O comando modify, altera o tipo primitivo da coluna e as regras*/

alter table  pessoa
change column endereço Ed  varchar(20)  not null default ' ';
/*ALTERE A TABELA PESSOA MUDANDO  O NOME DA COLUNA DE  endereço para Ed, O TIPO PRIMITIVO SERÁ VARCHAR
 *e a regra será não nullo, o pradão default  foi colocado porque este campo já tinha sido criado antes com valor nullo
 * então se não for preenchido o campo  o valor será nullo
 */
 alter table pessoa
 rename to gafanhotos;
 /* ALTERE A TABELA PESSOA MUNDANDO  O NOME DA TABLEA PARA gafanhotos*/
 
 select *from gafanhotos;
 
 /*Criando a tabela teste*/
 
 create table if not exists test(
 nome varchar(30) not null,
 descrição text,
 totalAulas int unsigned, /* UNSIGNED regra sem sinal */
 ano year default '2016'
 ) default charset=utf8mb4;
 drop table if exists test; /*delete a tabela que existe*/
 show tables; /*Mostre as tables*/
 
 select * from test;
 select * from cursos;
 select * from gafanhotos;
 
 describe test;
 alter table test
 modify column nome varchar(30) not null unique;
 
 alter table test
 add column idcurso int not null auto_increment; /* não foi possível executar o comando  devido a regra auto_incremnet*/
 
 alter table test
 add column idcurso int not null;
 
 alter table test
 add primary key(idcurso); /*ALTERE A TABELA TEST ADICIONANDO  UMA CHAVE PRIMARIA PARA */
 
 describe test;
 
 alter table test
 drop column idcurso;
  
 select* from test;
 describe test;
 
 alter table test
 add column idcurso int not null first;
 
 alter table test
 add primary key(idcurso);
 
 describe test;
 
 insert into test /*INSERINDO VALORES*/
values
('1','java','OO','30','2016'),('2','HTML','HTML5CSS3','30','2017'),('3','SQL','SQL SERVEN','30','2017');

/*DELETANDO TODA A TABELA TESTE com seus dados */
drop table if exists test;