select b.desnome, 
	sum(a.vlpedido) as total, 
	convert(AVG(a.vlpedido), dec(10, 2)) as media,
    convert(min(a.vlpedido), dec(10, 2)) as "menor valor",
    convert(max(a.vlpedido), dec(10, 2)) as "maior valor",
    count(*) as "total pedidos"
    from tb_pedidos a 
	inner join tb_pessoas b using(idpessoa)
    group by b.idpessoa
    having sum(a.vlpedido) > 50
    order by sum(a.vlpedido);