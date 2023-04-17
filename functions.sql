DELIMITER $$

CREATE FUNCTION fn_imposto_renda (
	pvlsalario DECIMAL(10, 2)
)
RETURNS DEC (10, 2)
BEGIN 
	DECLARE vimposto DECIMAL(10, 2);
    
    /*
		ATÉ 1903,98 NÃO PAGA IMPOSTO
        1903,99 ATÉ 2826,65 PAGA 7,5% DEDUZIR DO IMPOSTO 142,80
        2826,66 ATÉ 3751,05 PAGA 15% DEDUZIR DO IMPOSTO 354,80
        3751,06 ATÉ 4664,68 PAGA 22,5% DEDUZIR DO IMPOSTO 636,13
        ACIMA 4664,68 PAGA 27,5 DEDUZIR DO IMPOSTO 896,36
    */
    
    -- Quando pvlsalario [...] então vimposto [...]
    SET vimposto = CASE
		WHEN pvlsalario <= 1903.98 THEN 0
        WHEN pvlsalario >= 1903.99 AND pvlsalario <= 2826.65 THEN (pvlsalario * .075) - 142.80
        WHEN pvlsalario >= 2826.66 AND pvlsalario <= 3751.05 THEN (pvlsalario * .15) - 354.80
        WHEN pvlsalario >= 3751.06 AND pvlsalario <= 4664.68 THEN (pvlsalario * .225) - 636.13
        WHEN pvlsalario >= 4664.68 THEN (pvlsalario * .275) - 896.36
	END;
    
    RETURN vimposto;
END $$

DELIMITER ;

SELECT *, fn_imposto_renda(a.vlsalario) as "Calculo de imposto de renda"
	FROM tb_funcionarios a
	inner join  tb_pessoas using(idpessoa);