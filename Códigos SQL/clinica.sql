create database if not exists clinica
default character set utf8mb4
default collate utf8mb4_general_ci;
use clinica;

create table paciente(
codigo int not null,
nome varchar(80) not null,
cpf int,
sexo char(1),
check(sexo in('M','F'))
)default charset utf8mb4;

create table clinica(
codigo int not null,
nome varchar(80) not null,
local varchar(100),
primary key(codigo)
)default charset utf8mb4;

## exe01
alter table paciente add column data1 date;

## exe02
alter table paciente modify column cpf char(11);

## exe03
alter table paciente add primary key(codigo);

## exe04
alter table paciente change column data1 dataNascimento date;

select * from paciente;
describe paciente;
select * from clinica;
describe clinica;

insert into paciente (codigo,nome,cpf,sexo,dataNascimento)values('101','ricacio','109','M','1900-01-01'),
('102','ana','108','F','1910-02-12'),
('103','carmen','106','F','1920-03-30'),
('104','Lucas','110','M','1930-12-12'),
('105','nino','111','M','1945-08-10'),
('106','biza','112','M','1960-07-22'),
('107','Dora','113','F','1976-12-10'),
('108','Niel','114','M','2000-11-23'),
('109','Maria','115','F','2022-08-12'),
('110','Anderson','116','M','1999-12-18');

select * from paciente;

rename table paciente to internado;

select * from internado;
rename table internado to paciente;
select * from paciente;
select* from clinica;
insert into clinica(codigo,nome,local)values('01','apVida','PB-JP_centro'),
('02','Unimed','PB-JP_Torre'),('03','Vida+','PE_recife'),('04','SaúdeHoje','PE-recife'),
('05','ClinicaGeral','PB-JP_manaira'),('06','upaOceania','PB-JP_Bessa'),('07','upaValentina','PB-JP_valentina'),
('08','UPnaIntermares','PB-JP_intermares'),('09','UpaBrizaMar','PB-JP_BrizaMar'),('10','UpaBancários','PB-JP_bancários');

select * from clinica;

select * from paciente;
## exe 01
select nome from paciente;

## exe02
select codigo,nome,cpf from paciente;

## exe03
Select * from paciente;

## exe04
select codigo from paciente;

## exe05
select distinct sexo from paciente;

## exe06
select nome from paciente limit 5;

## exe07

select nome from paciente limit 5 offset 5;
select codigo from paciente limit 5 offset 5;
select * from paciente;
select codigo from paciente limit 2 offset 8;

## exe08
select * from clinica;
select codigo from clinica;

select distinct local from clinica;

## exe 09
## select * from clinica;
select codigo from paciente;

## exe10

select nome from paciente order by nome asc;

## exe11
select * from paciente;
select codigo,nome,cpf from paciente order by cpf,nome;

## exe12
 select codigo,cpf,nome from paciente 
 order by 2,3;
 
 ## exe13
 select codigo,cpf,nome from paciente
 order by cpf desc;
 
 ## exe14
 select codigo,cpf,nome from paciente
 order by codigo desc,nome;
 
 ## exe15
 select nome from paciente;
 
 ## exe 16
 select * from paciente;
 select codigo,sexo,dataNascimento from paciente order by codigo desc, dataNascimento asc;
 
 ## exe 17
 
 select nome,cpf from paciente
where cpf = 110; 

## exe18
select nome,sexo,dataNascimento from paciente where cpf = 106;

## exe19
select * from paciente;
select nome, sexo from paciente
where codigo < '108';

select nome,cpf,sexo from paciente where cpf < '108'; ## filtar sempre com primary key é recomendado

## exe 20 operadores
/*
=
<>
!=
<
<=
!<
>
>=
!>
BETWEEN
IS NULL


*/
## EXE21
SELECT CODIGO,NOME,CPF FROM PACIENTE WHERE CODIGO <> '101'; ## diferente ou  não igual
select codigo,nome,sexo from paciente where codigo != '101'; ## diferente ou não igual

## exe22

select nome,sexo from paciente
where codigo <= '108';

## exe23
select nome, dataNascimento from paciente where nome = 'ricacio';

## exe 24
select nome, sexo, cpf, dataNascimento from paciente where codigo between 102 and 109;

## exe 25
select  codigo,nome,cpf,sexo from paciente
where codigo != '109';

## exe 26
select nome, codigo from paciente where cpf between '110' and '113';

## exe 27
describe paciente;
insert into paciente (codigo,nome,sexo) values('111','Marisa','F');

select nome,cpf from paciente where cpf is null;

## exe28
select nome,codigo from paciente  where dataNascimento is null;

## exe29
select codigo , nome,cpf from paciente where cpf = '109';

## exe 30
select codigo,nome,cpf from paciente where cpf >= '110';

## exe 31
select codigo,nome from paciente where codigo >= '106' and codigo <= '109';

## exe32
select codigo, nome from paciente
where codigo between 103 and 106;

##===========================================================================================================================================
select * from clinica;
## exe33
select codigo,nome, local from clinica
where codigo = '1' and local = 'PB-JP_centro';

## exe34
select codigo,nome from clinica
where codigo = 1 or codigo = 5;

## exe35
select * from paciente;
select codigo,nome,cpf,sexo from paciente
where (codigo = '101' or codigo = '108') and sexo ='M';

##exe 36
select codigo,nome,cpf,sexo from paciente where codigo in('101','108') order by nome asc;

## exe37

select nome,sexo,dataNascimento from paciente
where codigo= 101 or codigo = 110 order by nome asc;

## exe 38

select nome from paciente where not codigo = '101' order by nome;

## exe39
  select nome from paciente
  where codigo <> '101' order by nome desc;
  
## exe 40
select * from clinica;
select nome,local from clinica where local = 'PE_recife';

## exe 45 
select * from paciente where codigo >='103' and codigo <= '106 ';
select * from paciente where codigo between '103' and '106' order by nome;
