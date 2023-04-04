select * from tb_funcionarios order by nome;

select * from tb_funcionarios order by 2;

-- por padrão retorna order by de forma ASC
select * from tb_funcionarios order by salario;

-- ordenando do menor ao maior salario e depois pela orde alfabética dos nomes
select * from tb_funcionarios order by salario desc, nome;

-- é boa prática utilizar o limit junto do order by, por conta de grande quantidade de dados
select * from tb_funcionarios order by salario limit 0, 3;
-- select * from tb_funcionarios order by salario limit inicio, fim;