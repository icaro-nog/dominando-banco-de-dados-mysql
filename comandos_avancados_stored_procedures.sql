DELIMITER $$;
CREATE PROCEDURE sp_funcionario_save (
	pdesnome varchar(256),
    pvlsalario DECIMAL(10, 2),
    pdtadmissao DATETIME
)
BEGIN
	DECLARE vidpessoa INT;
    
    START TRANSACTION;
    
    IF NOT EXISTS(SELECT idpessoa FROM tb_pessoas WHERE desnome = pdesnome) THEN
    
		INSERT INTO tb_pessoas VALUES(NULL, pdesnome, NULL);
        SET vidpessoa = LAST_INSERT_ID();
        
	ELSE
    
		SELECT "Usuário já cadastrado" AS resultado;
        ROLLBACK;
        
    END IF;
    
    IF NOT EXISTS(SELECT idpessoa FROM tb_pessoas WHERE idpessoa = vidpessoa) THEN
    
		INSERT INTO tb_funcionarios VALUES(NULL, vidpessoa, pvlsalario, pdtadmissao);
        
	ELSE
    
		SELECT "Usuário já cadastrado" AS resultado;
        ROLLBACK;
        
    END IF;
    
    COMMIT;
    
    SELECT "Dados cadastrados com sucesso!" AS resultado;
    
END $$

DELIMITER ;

CALL sp_funcionario_save("João", 5000, current_date());