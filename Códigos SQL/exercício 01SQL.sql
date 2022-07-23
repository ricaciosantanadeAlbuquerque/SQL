create database if not exists empresa
default character set utf8mb4
default collate utf8mb4_general_ci;
use empresa;

create table if not exists departamento(
codigo int not null,
nome varchar(80) not null,
primary key (codigo)
)default charset utf8mb4;

create table if not exists funcionario(
codigo int not null,
cpf varchar(50) not null,
salario numeric(5,2),
codDept int
);
describe funcionario;

alter table funcionario add primary key(codigo);
describe funcionario;

alter table funcionario add column categoria varchar(10) not  null default 'junior';

alter table funcionario
drop column salario;

select * from funcionario;

alter table funcionario
add constraint nivel1 check(categoria in('junior','pleno','sênio'));
describe funcionario;

alter table funcionario  drop constraint nivel;

alter table funcionario modify column categoria varchar(25);
alter table funcionario add column nome varchar(25);
alter table funcionario change column nome nomeCompleto varchar(55);
select * from funcionario;

rename table funcionario to empregado; 

select * from empregado;
describe empregado;

alter table empregado add foreign key(codDept)references departamento(codigo);

alter table empregado drop primary key;

drop table empregado;
drop database empresa;