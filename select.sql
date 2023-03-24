select count(*) as linhas_funcionarios from tb_funcionarios;

select nome, salario as sal_atual, convert(salario * 1.1, DEC(10, 2)) as "salario com aumento de 10%" from tb_funcionarios;