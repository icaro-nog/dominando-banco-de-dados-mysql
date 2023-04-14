DELIMITER $$;
CREATE PROCEDURE sp_funcionario_save (
	pdesnome varchar(256),
    pvlsalario DECIMAL(10, 2),
    pdtadmissao DATETIME
)
BEGIN
	DECLARE vidpessoa INT;
    
    START TRANSACTION;
																-- se não existir o nome passado por parâmetro, em pdesnome...
    IF NOT EXISTS(SELECT idpessoa FROM tb_pessoas WHERE desnome = pdesnome) THEN
									-- insira na tb_pessoas o parâmetro passado em pdesnome
		INSERT INTO tb_pessoas VALUES(NULL, pdesnome, NULL);
        SET vidpessoa = LAST_INSERT_ID(); -- seta o vidpessoa com o último id de tb_pessoas
        
	ELSE -- retorne resultado
    
		SELECT "Usuário já cadastrado" AS resultado;
        ROLLBACK; -- desfazer qualquer alteração feita no banco, durante a procedure
        
    END IF;
    
    IF NOT EXISTS(SELECT idpessoa FROM tb_funcionarios WHERE idpessoa = vidpessoa) THEN
    
		INSERT INTO tb_funcionarios VALUES(NULL, vidpessoa, pvlsalario, pdtadmissao);
        
	ELSE
    
		SELECT "Usuário já cadastrado" AS resultado;
        ROLLBACK;
        
    END IF;
    
END $$

DELIMITER ;

CALL sp_funcionario_save("Joselito", 5000.00, current_date());

select * from tb_pessoas;

select * from tb_funcionarios;