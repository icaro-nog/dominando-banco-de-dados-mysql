insert into tb_pessoas values(1, "João", "M");-- Insert de forma posicional

select * from tb_pessoas;

insert into tb_pessoas (nome, sexo) values("Degavar Marcos", "M"), 
("Pé de pano", "M"), 
("Degavar Marcos", "M"); -- Insert de forma declarativa

select * from tb_funcionarios;
select * from tb_pessoas;

insert into tb_funcionarios 
	select id, nome, 950, current_date(), sexo, null from tb_pessoas; -- Copiando dados de uma tabela para outra