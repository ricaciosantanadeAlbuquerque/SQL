use visoes;

select * from cliente;
##
select id,nome from cliente
where nome like 'a%';

select nome from cliente
where nome like 's%';

## exe 02

select * from vendedor
where nome like '%t_';

select * from vendedor where nome like '%x%' order by nome;

## exe 03

select nome from vendedor
where nome like 'F%t';

## exe04
select id, nome from cliente
where nome like 'a%';

## exe05

select id,nome from vendedor
where nome like 'Owen Bar_';

## exe06
select * from vendedor;
select id,nome from vendedor where nome like '%ward%';

## exe07
select id,nome from vendedor where not nome like '%ward%'  order by nome;


## exe08
select nome, cidade from cliente
where nome like 'Alan%' and cidade like '%house'; 

## exe09
select * from cliente;

select nome , cidade from cliente where  nome like 'Miranda% gra%';

## exe10

select nome from cliente where nome like 'Alan%B. hea_';