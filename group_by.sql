create table tb_pedidos(
    idpedido int auto_increment not null,
    idpessoa int not null,
    dtpedido datetime not null,
    vlpedido dec(10, 2),
    constraint PK_pedidos primary key(idpedido),
    constraint FK_pedidos_pessoas foreing key (idpessoa) references tb_pessoas (idpessoa)
);

select * from tb_pedidos;

insert into tb_pedidos values(null, 1, current_date(), 2200.00);
insert into tb_pedidos values(null, 1, current_date(), 5000);
insert into tb_pedidos values(null, 1, current_date(), 10000);
insert into tb_pedidos values(null, 1, current_date(), 1000);
insert into tb_pedidos values(null, 1, current_date(), 3000);

insert into tb_pedidos values(null, 2, current_date(), 1999.90);
insert into tb_pedidos values(null, 2, current_date(), 2000);
insert into tb_pedidos values(null, 2, current_date(), 123.45);

insert into tb_pedidos values(null, 3, current_date(), 40000);

select b.desnome, 
	sum(a.vlpedido) as total, 
	convert(AVG(a.vlpedido), dec(10, 2)) as media,
    convert(min(a.vlpedido), dec(10, 2)) as "menor valor",
    convert(max(a.vlpedido), dec(10, 2)) as "maior valor",
    count(*) as "total pedidos"
    from tb_pedidos a 
	inner join tb_pessoas b using(idpessoa)
    group by b.idpessoa;


