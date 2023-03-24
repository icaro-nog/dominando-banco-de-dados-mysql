drop database banco;

drop database hcode;

create database hcode;

use hcode;

create table tb_funcionarios(
	id int,
    nome varchar(100),
    salario decimal(10, 2), -- 10 algarimos e desses 10, 2 são decimais (centavos)
    admissao DATE,
    sex enum("F", "M"), -- ENUM é para valores pré-definidos, já faz a validação quando o valor é inserido na tabela
    cadastro timestamp default current_timestamp() -- Mesmo que não seja passada um valor, ele irá pegar o do servidor
);

insert into tb_funcionarios values("1", "Moledo da Massa", 4999.99, "2023-03-24", "F", NULL);

select * from tb_funcionarios;

desc tb_funcionarios;