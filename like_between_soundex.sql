-- Buscando nome com caractere inicial 'j' e qualquer outro caractere a frente
select * from tb_funcionarios where nome like "j%";

-- Buscando nome com qualquer caractere inicial com a letra 'a' e qualquer outro caratere final
select * from tb_funcionarios where nome like "%a%";

-- Buscando nome com a letra 'a' após as 3 primeiras posições e qualquer outro caractere final
select * from tb_funcionarios where nome like "___a%";

-- nome que não começa com a letra m
select * from tb_funcionarios where nome not like "m%";

-- salario entre 1000 e 2000
select * from tb_funcionarios where salario between 1000 and 2000;

-- soundex busca a expressao do que foi buscado. ex.: luis ou luiz
select * from tb_funcionarios where soundex(nome) = soundex("joao");