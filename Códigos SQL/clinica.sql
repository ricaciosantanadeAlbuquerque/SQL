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