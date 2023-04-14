-- criação de view
create view v_pedidostotais
as
select b.desnome, 
	sum(a.vlpedido) as total, 
	convert(AVG(a.vlpedido), dec(10, 2)) as media,
    convert(min(a.vlpedido), dec(10, 2)) as "menor valor",
    convert(max(a.vlpedido), dec(10, 2)) as "maior valor",
    count(*) as "total pedidos"
    from tb_pedidos a 
	inner join tb_pessoas b using(idpessoa)
    group by b.idpessoa;
    
-- select da view criada
select * from v_pedidostotais where total > 7000;

-- drop da view criada
DROP VIEW v_pedidostotais;