
create database cadastro
default character set utf8mb4
default collate utf8mb4_general_ci;

create table pessoa(
id int not null auto_increment,
nome varchar(30) not null,
nascimento date,
sexo enum('M','F'),
peso decimal(5,2),
altura decimal (3,2),
nacionalidade varchar(20) default 'Brasil',
primary key(id)
) default charset utf8mb;
use cadastro;

describe pessoa;

insert into pessoa
(id,nome,nascimento,sexo,peso,altura,nacionalidade)
values
('1','godofredo','1984-01-02','M','78.5','1.83','Brasil');

select * from pessoa;
insert into pessoa
(nome,nascimento,sexo,peso,altura,nacionalidade)
value
('Maria','1999-12-30','F','55.2','1.65','Portugal');

select * from pessoa;

insert into pessoa
(id,nome,nascimento,sexo,peso,altura,nacionalidade)
value
(default,'Creuza','1920-12-30','F','50.2','1.65',default);

select*from pessoa;
/*==========================================================================================================================*/
create database cadastro1
default character set utf8
default collate utf8_general_ci;
use cadastro1;

create table pessoa1(
id int not null auto_increment,
nome varchar(30) not null,
nascimento date,
sexo enum('M','F'),
peso decimal(5,2),
altura decimal(3,2),
nacionalidade varchar(20) default 'Brasil',
primary key(id)
)default charset = utf8;

describe pessoa1;
