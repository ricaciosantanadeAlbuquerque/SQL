select * from cliente;
## exe01 concat()
select concat(nome,'==',cidade)  from cliente;

## exe 02
select * from cliente;

select concat(nome,cidade) as valorJuntos from cliente;
 
 select concat(nome,cidade) as nomeLocal from vendedor;
 
## exe03

select * from pedido;
select numero,valor,dataCompra, (numero*valor) as valorTotal from pedido where  numero = '66';

## exe04
select numero,valor, (numero+valor) as novoValor from pedido where dataCompra = '2017-04-24';

## exe05

select numero,valor, (numero - valor) as ValorMenor from pedido where not dataCompra = '2016-12-23';

## exe06
select * from vendedor;

select id as id_venda ,nome as nome_venda, cidade as cidade_venda, comissao as comissao_venda from vendedor;
 
 ## exe 07
 select * from pedido;
 
 select numero,dataCompra, valor, ((valor*10)/100) as desconto from pedido;
 
 ## exe 08
  select numero ,dataCompra, valor,((valor*20)/100) as desconto20 from pedido;
  
  ## exe 09
  select *,((valor*30)/100) as desconto30 from pedido;
  
  ## exe 10
select *,((valor*50)/100) as desconto50 from pedido where idCliente = '72';