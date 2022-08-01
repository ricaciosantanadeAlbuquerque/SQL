use visoes;
-- exe01

select nome,comissao from vendedor where comissao = 34;

-- exe02
select nome, comissao from vendedor where comissao < 34;

-- exe03
select * from pedido where idCliente <> 72;
-- ou

select * from pedido where idCliente != 72;

-- exe04
select nome,comissao from vendedor where comissao between 55 and 89;

-- exe05

select * from pedido where idCliente is null;

-- exe06
select id, nome from vendedor where comissao = 9;

-- exe07
select id,  nome from vendedor where comissao >= 9;

-- exe08

select numero,valor,dataCompra from pedido where numero = 100;

-- exe09

select numero,valor from pedido where valor between 15 and 90 order by valor asc;