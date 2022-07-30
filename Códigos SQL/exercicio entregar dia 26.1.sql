
drop database ATIVIDADE;

create database if not exists ATIVIDADE
default character set utf8mb4
default collate utf8mb4_general_ci;
use ATIVIDADE;

create table if not exists cliente(
codigo int not null primary key,
nome  varchar(50),
edereco varchar(100),
CPF char(11) not null,
telefone char(11)
)default charset utf8mb4;


create table if not exists vendedor(
codigo int not null primary key,
nome varchar(50),
salario decimal(7,2)
)default charset utf8mb4;



create table if not exists produto(
id int not null primary key,
unidade char(3),
descricao varchar(50),
valorUnitario decimal(7,2)
)default charset utf8mb4;


create table if not exists pedido(
numPedido int not null primary key,
prazoEntrega date,
codigoCliente int,
codigoVendedor int,
foreign key (codigoCliente)references cliente(codigo),
foreign key(codigoVendedor)references vendedor(codigo)

)default charset utf8mb4;



create table itemPedido(
numeroPedido int,
idProduto int,
quantidade int,
foreign key (numeroPedido)references pedido(numPedido),
foreign key (idProduto )references produto(id),
primary key(numeroPedido,idProduto)
)default charset utf8mb4;



describe pedido;
describe produto;

# 2====================================================================================================================================================
#tabela cliente
# A)
alter table cliente
add column tipo varchar(40);

# B)
alter table cliente
modify column nome varchar(100);

# tabela vendedor

# C)
alter table vendedor 
change column codigo id int ;

# D)
alter table vendedor
add column telefone char(11);

# tabela pedido

# e)

  alter table pedido
  change column numeroPedido numPedido int;
  describe pedido;
  # f)
  
  alter table pedido
  drop column prazoEntrega;
  
  # G)
  alter table pedido
  add column tipo varchar(20);
  
  alter table pedido
  add column dataEmbarque date;
  
  alter table pedido
  add column  dataEntrega date;
  
  alter table pedido
  add column valorTotal decimal(7,2);
  
  alter table pedido
  add column  desconto int;
   
  
  
  ## tabela produto ========================================================================================

describe cliente;
describe vendedor;
describe produto;
describe pedido;
describe itempedido;
  # h)
 
  
  alter table produto change column id codigo int;
  
  # i)
  
   alter table produto drop column unidade;
   
   # j)
    
    alter table produto
    change column descricao nome  varchar(100);
    
    # K)
    
    alter table produto
    change column valorUnitario preco decimal(7,2);
    
    # i)
    
    create table if not exists fabricante(
    codFabricante  varchar(10)  not null primary key,
    nomeFabricante varchar(30) not null,
    descricaoFabricante varchar(100)
    ) default charset utf8mb4;
    
    
    
	
        
    alter table produto
    add column idFabricante varchar(10);
    
    alter table produto
    change column idFabricante codFabricante varchar(10);
    
    alter table produto
    add foreign key(codFabricante) references fabricante( codFabricante);
    
    describe fabricante;
    describe produto;
    # 3 ======================================================================================================================
    
    # 4) inserindo dadaos 
    
    select * from pedido;
    
    describe pedido;
    select * from cliente;

		describe cliente;
    
    insert into cliente 
    (codigo,CPF,nome) values
    ('101','333.884.555-07','luiza'),
    ('102','110.444.656-05','antonio'),
    ('124','777.888.454-08','ana');
    
    select * from vendedor;
    describe vendedor;
    
    insert into vendedor (id,nome) values('5','joão');
    insert into vendedor (id,nome) values('1','marcos');
    insert into vendedor (id,nome) values('2','glauber');
    
    select * from pedido;
  
  insert into pedido
  (numPedido,tipo,dataEmbarque,dataEntrega,valorTotal,desconto)
  values
  ('1','À vista','2017-01-12','2017-02-12','3000,00','10'),
  ('2','A prazo 30 dias ','2017-02-15','2017-03-20','7001,39',''),
  ('3','À vista','2016-12-22','2017-01-25','8591,99','5'),
  ('4','A prazo 30 dias','2016-11-18','2016-12-29','',''),
  ('5','À vista','2017-02-12','2017-02-12','','');
  
  select * from pedido;
    select * from cliente;  # inseriri as chaves via codigo
  select *  from vendedor;
  
  update pedido
  set codigoCliente = '101' where numPedido ='1';
    update pedido
  set codigoCliente = '102' where numPedido ='2';
  
    update pedido
  set codigoCliente = '124' where numPedido ='3';
  
    update pedido
  set codigoCliente = '101' where numPedido ='4';
    update pedido
  set codigoCliente = '101' where numPedido ='5';
  
  select * from pedido;
  
    update pedido
  set codigoVendedor = '5' where numPedido ='1';
  
     update pedido
  set codigoVendedor = '5' where numPedido ='2';
  
     update pedido
  set codigoVendedor = '1' where numPedido ='3';
  
     update pedido
  set codigoVendedor = '2' where numPedido ='4';
  
     update pedido
  set codigoVendedor = '1' where numPedido ='5';
  
  select * from pedido;
select * from fabricante;
  
  
  select * from fabricante;
  
  describe fabricante;
   
   
  insert into fabricante (codFabricante,nomeFabricante) values('F004','luiz');
  insert into fabricante (codFabricante,nomeFabricante) values('F006','ana');
  insert into fabricante (codFabricante,nomeFabricante) values('F001','lucas');
  insert into fabricante (codFabricante,nomeFabricante) values('F003','Matheus');
   insert into fabricante (codFabricante,nomeFabricante) values('F005','biza');

 select * from fabricante;
##==================PRODUTO=================
 insert into produto (codigo,nome,preco) 
 values('1001','TV','3500,00'),
 ('1004','Faqueiro',''),
 ('1002','lapTop','3500,69'),
 ('1020','Laptop','5000,99'),
 ('1010','impressora','295,50'),
 ('1111','TV','');
 
 select * from produto;
  select * from fabricante;
  
  update produto
  set codFabricante ='F004'
  where codigo = '1001' limit 1;
  
    update produto
  set codFabricante ='F006'
  where codigo = '1004' limit 1;
  
    update produto
  set codFabricante ='F001'
  where codigo = '1002' limit 1;
  
    update produto
  set codFabricante ='F003'
  where codigo = '1020' limit 1;
  
    update produto
  set codFabricante ='F001'
  where codigo = '1010' limit 1;
  
    update produto
  set codFabricante ='F005'
  where codigo = '1111' limit 1;

  select * from produto;
  
   select * from itempedido;
   describe itempedido;
   
   
   
   select * from itempedido;
   select * from produto;
   select * from pedido;
  

 describe itempedido;
insert into itempedido
values
('2','1002','2'),
('3','1010','2'),
('3','1001','1'),
('3','1020','1');


select * from produto;
select * from pedido;
select * from itempedido;

select * from itempedido;
select * from produto;
describe itempedido;












#  5) ======================================================================
 select * from produto;
 
 # a)
   select nome,preco from produto;
   
   # b)
   select tipo from pedido
   where dataEmbarque between '2017-02-1' and '2017-02-30';
   
   # c)
   select * from produto;
     select * from produto order by  codigo desc;
     
     # d)
    
		select nome from produto
        where preco between '2000' and '7000';

   
   
   # e)
   select sum(preco) from produto;
   
   # f)
    select nome,min(preco) from produto
    where preco <> '00';
    # g )
    select avg(preco) from produto;
    
    # h)
      
      select * from produto
      where nome like '%p%';
      
      # i)
      
       select nome from produto
       where codFabricante between 'F004' and 'F006';
       
       # j)
	
        select tipo,valorTotal from pedido;
       
       # k)
       
       # l)
       
        select count(quantidade) from itempedido;
        
        # m)
      
         select count(*) from pedido
         where tipo = 'A prazo 30 dias ';
        
        # n)
         select * from pedido;
          select avg(desconto) from pedido;
          
          # o)
          
           select tipo, dataEmbarque, dataEntrega from pedido
           order by tipo asc, dataEmbarque desc;
           
           # p)
            
            select tipo  from pedido
            where desconto <> '0';
		 # q)
	
          select max(valorTotal), tipo, dataEmbarque from pedido;
           
           # r)
               
               
               select tipo, dataEntrega from pedido where codigoVendedor = '5';
         
       /**/
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
	