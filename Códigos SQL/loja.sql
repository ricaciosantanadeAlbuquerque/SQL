create database if not exists loja
default character set utf8mb4
default collate utf8mb4_general_ci;
use loja;

create table cliente(
codigo int not null,
nome varchar(50) not null,
endereço varchar(100),
cpf char(11) not null unique,
telefone char(11),
constraint pkCliente primary key(codigo)
)default charset utf8mb4;

create table if not exists vendedor(
codigo int not null,
nome varchar(50) not null,
salario decimal(7,2),
 constraint pkVendedor primary key (codigo)
)default charset utf8mb4;

create table produto(
id int not null,
unidade char(3),
descricao varchar(50),
valorUnitario decimal(7,2),
constraint _pkProduto primary key(id)
)default charset utf8mb4;

create table pedido(
numeroPedido int not null,
prazoEntrega date,
codigoCliente int,
codigoVendedor int,
 constraint _pkPedido primary key(numeroPedido),
 constraint _fkCliente foreign key(codigoCliente)references cliente(codigo),
 constraint _fkVendedor foreign key(codigoVendedor)references vendedor(codigo)
)default charset utf8mb4;

create table if not exists itemPedido(
numPedido int not null,
idProduto int not null,
quantidade int,
constraint _pkintemPedido primary key(numPedido,idProduto), /*Chave primária composta*/
constraint _fkPedido foreign key(numPedido)references pedido(numeroPedido),
constraint _fkPoduto foreign key(idProduto)references produto(id)
)default charset utf8mb4;