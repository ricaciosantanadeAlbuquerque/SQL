 create database cadastro; /*CRINADO UM BANCO DE DADOS */
 use cadastro; /*USANDO O BANCO DE DADOS CADASTRO*/
 create table pessoa(/*CRIANDO UMA TABELA  DE NOME PESSOA */
 nome varchar(30),
 idade tinyint,
 sexo char(1),
 peso float,
 altura float,
 nacionalidade varchar(10)
 );
 

 
 describe pessoa;
  drop database cadastro;
 /*=========================================================================================================*/
create database cadastro1;
use cadastro1;
create table pessoa1(
nome varchar(30),
idade tinyint,
sexo char(1),
altura float,
nacionalidade varchar(30)
);
describe pessoa1;
drop database cadastro1;
/*=========================================================================================================*/
create database cadastro2;
use cadastro2;
create table pessoa2(
nome varchar(30),
idade tinyint,
sexo char(1),
peso float,
altura float,
nacionalidade varchar(30)
);
describe pessoa2;
drop database cadastro2;
/*=========================================================================================================*/
create database cadastro3;
use cadastro3;
create table pessoa3(
nome varchar(10),
idade tinyint,
sexo char(1),
peso float,
altura float,
nacionalidade varchar(30)
);
describe pessoa3; /* DESCREVENDO A ESTRUTURA DA TABELA PESSOA3*/
select * from pessoa3;/*SELECIONANDO TODA TABELA PESSOA3*/
drop database cadastro3;

create database cadastro4;
use cadastro4;
create table pessoa4(
nome varchar(30),
idade tinyint,
sexo char(1),
peso float,
altura float,
nacional varchar(20)
);
describe pessoa4;


/* TIPOS DE DADOS
* NUMERICOS  INTEIROS:tinyInt, SmallInt, int,mediuInt, bigInt
*            REAL: decimal,float,double,real;
*            LÓGICO: bit,boolen;
===========================================================================
* DATA/TEMPO:	Date, DateTime , TimeStamp ,time , year;
*===========================================================================
LITERAL: CARACTERE : char, vachar,
        * TEXTO: tinyText, Text, MediumText, longText
        * BINARIO: tinyBlob , blob , MediumBlob, longBlob 
        * COLEÇÃO: enum. set 
===========================================================================
ESPACIAL:
	    * Geometry, point, polygon
        */