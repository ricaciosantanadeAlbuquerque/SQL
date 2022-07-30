/*UTILIZE A BASE DE DADOS EMPRESA PARA FAZER ESSE EXERCÍCIO*/
USE visoes;
select * from cliente;
describe cliente;
select * from pedido;
describe pedido;

select * from vendedor;
describe vendedor;

select * from cliente inner join pedido on cliente.id = pedido.idCliente;
select * from vendedor inner join pedido on vendedor.id = pedido.idVendedor;
select * from cliente inner join pedido inner join vendedor on cliente.id = pedido.idCliente and
vendedor.id = pedido.idVendedor;

## exercício 01
select cliente.id, cliente.nome , cliente.cidade from cliente where id = '62' or id = '72' order by id;
## exercício 02
select nome,cidade,comissao from vendedor
where comissao = '33' or comissao = '77' or comissao = '89' or comissao = '7'or comissao = '65'
order by id;

## exercício 03

select numero,valor,dataCompra from pedido
where idCliente = '72' or idCliente = '28'
 order by numero desc;
 
 ## exercício 04;
 
 select * from pedido;
 
 Select * from pedido
 where (idCliente = 72 or idCliente = 74 or idCliente= 66) and valor >= 33;
 ## ATENÇÃO O OPERADOR and TEM MAIOR ORDERM DE PRECEDÊNCIA DO QUE O OPERADOR or POR ISSO SE DESEJAMOS EXECUTAR A CONDIÇÃO OR
 ## PRIMEIRO ENTÃO DEVEMOS PASSA-LÓ ENTRE PARENTESES
 /*
 ()
 AND
 OR
 NOT
 */
 ## exercício 05				
  select * from vendedor;
  
  select nome, cidade from vendedor
  where comissao in('100','77')
  order by nome;
  
  ## exercício 06
  
  select nome,cidade from vendedor
  where comissao = 100 or comissao = 77 order by nome;
  
  ## execute 07
  select * from vendedor ;
  
  select id,nome,cidade,comissao from vendedor
  where comissao in('100','90','19','79','49','77','55','5','34')
  order by comissao;
  
  ## exercício 08
  select distinct nome from cliente;
  
## exercício 09
 select * from cliente
 where  not nivel = '6';
 
 ## exercício 10
 
 select * from pedido
 where not idVendedor = '60' order by numero;
 
 select numero, valor from pedido where  not numero = 4 order by numero;
 
 ## exercício 011
 
 select numero,valor from pedido where numero <> 4 order by numero;
 
 select numero,valor from pedido where numero != 4 order by numero;
 ## o operador not se comporta como o operador diferente, a vantagem do not sobre o <> seria visto em clausulas sql mais complexas o que não é o caso aque 
 