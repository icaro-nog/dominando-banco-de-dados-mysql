create database hcode;

use hcode;

create table clientes (
	id int,
    nome varchar(100)
);

insert into clientes values(1, "Marco Aurélio");

insert into clientes values(2, "Felipe João");

select * from clientes;