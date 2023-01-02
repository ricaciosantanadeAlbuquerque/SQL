create database if not exists MERCADO
default character set utf8mb4
default collate utf8mb4_general_ci;

use MERCADO;

create table cliente(
idCliente int auto_increment,
nome varchar(100),
cpf char(20) unique,
sexo char(1),
email varchar(50),
primary key(idCliente)
)default charset utf8mb4;


create table telefone(
idTelefone int auto_increment,
ddi char(3),
ddd char(2),
numeroTel char(10),
tipo varchar(10),
idCliente int,
foreign key(idCliente)references cliente(idCliente) on delete cascade on update cascade,
primary key(idTelefone,idCliente)
)default charset utf8mb4;


create table produto(
idProduto int auto_increment,
nomeProd varchar(100),
preco double (4,2),
dataCompra date,
idCliente int,
foreign key(idCliente)references cliente(idCliente)on delete cascade on update cascade,
primary key(idProduto,idCliente)
)default charset utf8mb4;



create table endereco(
idEndereco int auto_increment,
rua varchar(100),
numeroEnd varchar(5),
bairro varchar(50),
cidade varchar(50),
estado char(2),
cep varchar(36),
pais varchar(30),
idCliente int unique,
primary key(idEndereco,idCliente),
foreign key(idCliente)references cliente(idCliente)on delete cascade on update cascade
)default charset utf8mb4;


drop database MERCADO;
truncate table cliente;
-- consultas =======================================================================================


insert into cliente(nome,cpf,sexo,email)values('Maria das Dores','12415687539','F','dasdores@email.com'),
('José Claudino dos Santos','36578425741','M','claudino@email.com'),
('João Henrique Moura','68753942158','M','jkike@email.com'),
('Carolina Beatriz Ferreira','78532146985','F','carol@email.com'),
('Ilana Pinheiro','59873214550','F','ilana@email.com'),
('Flaviano Costa','36571235890','M','flaviano@email.com'),
('Teresa Maria Carvalho','02357905460','F','there@email.com'),
('Sinvaldo Luciano Pessoa ','47850036911','M','sinvaldo@email.com'),
('Erivaldo Camilo Cunha','36500478442','M','camilo@email.com'),
('Lucas Castro','75698213045','M','luquinha@email.com'),
('Amélia Melo','69872365012','F','meli@email.com'),
('Vicente Vitório','96570236400','M','vitorio@email.com'),
('Judite Torres','65789234503','F','judite@email.com'),
('Debora Felicidade','35789254036','F','feliz@email.com'),
('Cícero Correia','03258764239','M','cicinho@email.com');
## MOSTRANDO OS DADOS NA TABELA
select * from cliente;
describe cliente;

## ENDEREÇO ===================================================================================================
delete from endereco
where idEndereco = 1;

insert into endereco(rua,numeroEnd,bairro,cidade,estado,cep,pais,idCliente)values
('Av Oceânica','100','Barra','Salvador','BA','55060-010','Brasil','4'),
('Av Epitácio Pessoa','125','Centro','João Pessoa','PB','58026-014','Brasil','1'),
('Av Boa Viagem','1098','Boa Viagem','Recife','PE','56221-756','Brasil','3'),
('Av Ruy Carneiro ','658','Manaíra','João Pessoa','PB',' 58035-047','Brasil','2'),
('Av João Maurício','462','Manaíra','João Pessoa','PB','58035-047','Brasil',' 6'),
('Av Campos Sales','1485','Centro','Natal','RN','54896-365','Brasil','5'),
('Av Sete de Setembro','1004','Barra','Salvador','BA','55060-010','Brasil','8'),
('Av Dom Pedro I','456','Tambiá','João Pessoa','PB','58045-965','Brasil','9'),
('Av Mosenhor Walfredo Leal ','1025','Centro','João Pessoa','PB','58026-014','Brasil','10'),
('Av Floriano Peixoto','589','Jaguaribe','João Pessoa','PB','58045-321','Brasil','11'),
('Av Nilo Peçanha','325','Petrópolis','Natal','RN','4893-012','Brasil','12'),
('Rua Bancário Sérgio Guerra','1069','Bancários','João Pessoa','PB','58453-102','Brasil','13'),
('Av Conde da Boa Vista','100','Centro','Recife','PE','56872-013','Brasil','14'),
('Av Alfredo Lisboa','Av Alfredo Lisboa','Centro','Recife','PE','56872-013','Brasil','15'),
('Rua Fernando Luiz Henrique','257','Bessa','João Pessoa','PB','58030-456','Brasil','7');
select * from endereco;
describe endreco;

##============ preenchendo  Telefone ===========================================================

insert into telefone(ddi,ddd,numeroTel,tipo,idCliente)values
('+55','81','998563-5472','Celular','3'),
('+55','81','2568-4785','Residencial','3'),
('+55','81','99563-4126','Celular','15'),
('+55','81','95863-4287','Comercial','15'),
('+55','71','97586-3201','Celular','4'),
('+55','71','97563-0142','Comercial','8'),
('+55','71','4256-7853','Residencial','8'),
('+55','84','98563-4752','Celular','5'),
('+55','84','99365-0012','Comercial','5'),
('+55','84','3256-4562','Residencial','5'),
('+55','83','99526-0158','Celular','13'),
('+55','83',' 99814-3601','Celular','2'),
('+55','83','3246-8500','Residencial','2'),
('+55','83','3221-0003','Residencial','10'),
('+55','83','98563-4720','Celular','10'),
('+55','83','3269-7403','Residencial','7'),
('+55','83','98420-0236 ','Comercial','7'),
('+55 ','83','99240-4140 ','Celular','7');

select * from telefone;

##================== preenchendo produto =================================================

insert into produto(nomeProd,preco,dataCompra,idCliente)values
('Achocolatado em Pó – 200g','2.49','2022-12-30','5'),
('Açúcar Extra Fino – 1kg','2.39','2022-12-30','5'),
('Arroz Tipo 1 – 500g','9.99','2022-12-23','4'),
('Biscoito Recheado','1.49','2022-12-30','5'),
('Café Tradicional','3.99','2022-12-23','4'),
('Extrato de Tomate','2.49','2022-12-22','3'),
('Farinha de Mandioca – 500g','2.49','2022-12-2,49','3'),
('Farinha de Milho – 500g','1.49','2022-12-23','8'),
('Farinha de Trigo Especial – 1kg','3.49','2022-12-21','10'),
('Feijão Carioca – 1kg','6.49','2022-12-20','8'),
('Leite em Pó – 200g','5.99','2022-12-20','14'),
('Macarrão','2.99','2022-12-23','14'),
('Óleo de Soja ','6.39','2022-12-20','9'),
('Sal Refinado – 1kg','1.99 ','2022-12-19','4'),
('Ovos – 12 unid.','9.99','2022-12-30','1'),
('Manteiga','4.49','2022-12-30','1'),
('Frango – 1kg','12,63','2022-12-28','6'),
('Queijo Muçarela – 300g','4.58','2022-12-28','6'),
('Cebola – 1kg','7.89','27/12/2022','2');


select * from cliente;
select * from produto;
select * from endereco;
select * from telefone;
describe cliente;
describe produto;
describe endereco;
describe telefone;
## 4) Atualize o valor do produto aplicando um aumento de 50% sobre o preço, somente para os produtos cujo preço for menor que R$8,00
select * from produto;
select  preco * 0.5 as porcento from produto where preco < 8.00; -- primero visualize quanto é 50% de cada valor onde o preço e menor do que 8.00

update produto
set preco = preco + (select preco * 0.5 ) where preco < 8.00; -- aplicando aumento de 50 %  clicar uma unica vez 
select * from produto;

## 5)  Alterar a tabela PRODUTO, somente para o produto cujo código = 10, mudando o nome para “Feijão Carioca”;
 update produto
 set nomeProd = 'Feijão Carioca'
 where idProduto = 10; -- filtrando pela chave primaria
 
 select*from produto;
 
 -- 6. Exclua da tabela TELEFONE, todos em que o tipo seja RESIDENCIAL;
 
 select * from telefone;
 
delete from telefone
where tipo = 'Residencial';

select * from telefone;

## 7. Exclua da tabela CLIENTE, o de código = 13

select * from cliente;

delete from cliente where idCliente = 13;

select * from cliente;
