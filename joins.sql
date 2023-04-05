-- select de dados em comum que contenham em ambas as tabelas
select * from tb_funcionarios a
 inner join tb_pessoas b on a.idpessoa = b.idpessoa;
 
 -- select de dados em comum que contenham em ambas as tabelas, porém coluna precisa ser do mesmo nome
select * from tb_funcionarios
	inner join tb_pessoas using(idpessoa);

insert into tb_pessoas values(null, "Jô Soares", null);

-- select de dados em comum que contenham apenas na tabela a esquerda
select * from tb_pessoas a
	left join tb_funcionarios b on a.idpessoa = b.idpessoa;

-- select de dados em comum que contenham apenas na tabela a direita
select * from tb_pessoas a
	right join tb_funcionarios b on a.idpessoa = b.idpessoa;