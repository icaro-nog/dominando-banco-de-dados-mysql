-- Formas permitidas pelo sql de buscar por data
select * from tb_funcionarios where cadastro > "2023-01-01";
select * from tb_funcionarios where cadastro > "2023/01/01";
select * from tb_funcionarios where cadastro > "2023.01.01";
select * from tb_funcionarios where cadastro > "20230101";

-- setar admissao com a data atual
update tb_funcionarios set admissao = current_date() where id = 2;

-- adicionar dias a data atual ou outra data passada no primeiro parâmetro do date_add
update tb_funcionarios set admissao = date_add(admissao, interval 1 day) where id = 1;

-- diferença de dias
select datediff(admissao, current_date()) as "diferenca de dias" from tb_funcionarios where id = 3;