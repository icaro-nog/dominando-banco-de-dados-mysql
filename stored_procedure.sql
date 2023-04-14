-- delimitador de procedure
DELIMITER $$
-- criação de procedure
CREATE PROCEDURE sp_pessoa_save(
	pdesnome varchar(256)
)
BEGIN
	INSERT INTO tb_pessoas VALUES(NULL, pdesnome, NULL);
    
											-- selecione o último id inserido em tb_pessoas
    SELECT * FROM tb_pessoas where idpessoa = last_insert_id();
END $$
DELIMITER ;

-- chamando procedure e inserido parâmetro pdesnome
CALL sp_pessoa_save("Massaharu");

select * from tb_pessoas;