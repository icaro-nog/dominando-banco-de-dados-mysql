delete from tb_pessoas where id = 1;

select * from tb_pessoas;

-- Inicio de transação para realizar testes
start transaction;

-- Apagar tabela
delete from tb_pessoas;

select * from tb_pessoas;

-- Retornar ação anterior feita na tabela (delete, update...)
rollback;

-- Confirmar alterações feitas durante transaction, não será mais possível realizar o rollback
commit;

insert into tb_pessoas values(null, "Jesse Pinkman", "M");

-- Apagar tabela e iniciar autoincrement do ZERO
truncate table tb_pessoas;


