create database if not exists pessoas  /*Crindo um banco que não existe */
default character set utf8mb4   /* regra*/
default collate utf8mb4_general_ci; /* CRIANDO  O BANCO DE DADOS PADRÃO UTF8MB4*/

/*=======================================================================================*/
create table if not exists pessoa1( /*CRINDO TABELA PESSOA1 se ela não existir */
id int not null auto_increment,
nome varchar(30) not null,
nascimento date,
sexo enum('M','F'),
peso decimal(5,2),
altura decimal (3,2),
nacionalidade varchar(20) default 'Brasil',
primary key(id)
)default charset utf8mb4;	
/*=======================================================================================*/
/*Inserindo dados*/
use pessoas;
drop table pessoa1;
/*Inserindo dados */
insert into pessoa1
(nome,nascimento,sexo,peso,altura,nacionalidade)
values
('Ana','2002-12-01','F','68','1.78','Africa do sul');

select * from pessoa1;

 insert into pessoa1 values (default,'Ricardo','1999-04-23','M','80','1.90',default),
 (default,'Luiza','1922-07-24','F','56','1.62','Portugal');
 
 describe pessoa1;  /*Descrevendo tabela */

insert into pessoa1
values
(default,'carmem','1983-04-10','F','55','1.60',default),
(default,'Bria','1974-11-30','M','77','1.78',default),
(default,'Bianca','2004-08-12','F','78','1.82','Espanha');

insert into pessoa1
values
(default,'ricardo','1995-06-13','M','70','1.78',default);

select * from pessoa1;

/*ALTER TABLE ADICIONANDO UMA COLUNA*/
alter table pessoa1
add column profissao varchar(20) not null;

describe pessoa1;

alter table pessoa1
drop column profissao;  /*DELETANDO  A COLUNA PROFISSAO */

select * from pessoa1;

alter table pessoa1
add column profissao varchar(20)  after nome; /*ALTERE A TABELA PESSOA  ADICIONANDO O COMPRA PROFISSAO DO TIPO VARCHAR DEPOIS DO CAMPO NOME*/

select * from pessoa1;

alter table pessoa1
add column codigo int first; /*adicionando o campo  codigo como first primeiro campo da tabela */
 select * from pessoa1;
 
 describe pessoa1;
 
 alter table pessoa1
 modify column profissao varchar(10)  not null default '';
 
 alter table pessoa1
 change profissao prof varchar(15) not null default '';
 
 select * from pessoa1;
 describe pessoa1;
 alter table pessoa1
 change prof trabalho varchar(2);
 
 select * from pessoa1;
describe pessoa1; 

 alter table pessoa1
 modify column trabalho varchar(24)  not null; /* Modificando o tipo do campo  e suas regras*/
 
 alter table pessoa1
 change column trabalho profissao varchar(30);
 
 desc pessoa1;
 
 /*ALTERANDO O NOME DA table*/
 
	alter table pessoa1
    rename to olá; /*Renomeando a tabela para olá */
    
    alter table olá
    rename to pessoa;
    
 /*===================================================================================================================================================*/
  create table if not exists cursos(
  nome varchar (30) not null unique,
  descricao text,
  carga int unsigned,
  toaulas int unsigned,
  ano year default '2016'
  )default charset utf8mb4;
  
use pessoas; /* usando o banco */
describe cursos;

alter table cursos
add column  idcursos int  first;
  
  select * from cursos;
  
  alter table cursos
  add primary key (idcursos); /*Adicionado chave primaria*/
  
  
  create table if not exists test (nome text) default charset utf8mb4;
  
  drop table if exists test;
  
  
  select * from cursos;
  
  insert into cursos
  (idcursos,nome,descricao,carga,toaulas,ano)
  values
  ('1','java','programação','40','30','2015'),
   ('2','HTML5','web','40','20','2018');
   
select * from cursos;

insert into cursos values ('3','PHP','programação','45','33','2019');

alter table cursos
add column certificados varchar(30) not null ;

describe cursos;
alter table cursos
 modify column  certificados varchar(30) after nome;
 select * from cursos;
 
 update cursos
 set certificados = 'HTML5'
 where idcursos = '1'
 limit 1;
 
 select * from cursos;
 
 alter table cursos
 add column experiência varchar(2)  not null;
 
 alter table cursos
 modify column experiência varchar(20) not null;
 
 alter table cursos
 change column certificados CT varchar(15) ;

select * from cursos; 
 alter table cursos
 modify column experiência varchar(30) first;
 
 alter table cursos
 drop column experiência;
 
 alter table cursos
 rename to tabela;
 
 select * from tabela;
 
 alter table tabela
 rename to cursos;
 
 create table if not exists texte(nome varchar(20))default charset utf8mb4;
 drop table if exists texet;
 