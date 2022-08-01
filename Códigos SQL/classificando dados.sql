use visoes;

--  exe 01

select nome from cliente order by nome;

-- exe 02

 select id,nome,cidade from cliente order by nome asc;
 
 -- exe 03
 select* from vendedor;
 
select id,nome,cidade,comissao from vendedor order by 2,3;

-- exe04
select id, nome,cidade from vendedor order by nome desc, cidade asc;

-- exe 05
select nome from cliente order by nome desc;

-- exe 06
select cliente.id,pedido.numero from cliente inner join pedido on cliente.id = pedido.idCliente
order by cliente.id desc,pedido.numero asc;

-- exe 07
select valor,numero from pedido
order by numero desc, valor desc;

-- exe08
