select * from tb_funcionarios where sex = "M" and salario > 1000;

select * from tb_funcionarios where sex = "F" OR salario > 1000;

update tb_funcionarios set salario = salario * 1.4 where id = 3;