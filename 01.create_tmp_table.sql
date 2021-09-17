------------------------------------------
-- Criar tabela temporária
------------------------------------------
CREATE TABLE msaf_dfe.limpeza_lobs(ID_LOB numeric(38, 0) NOT NULL);
CREATE INDEX idx_limp_lobs ON msaf_dfe.limpeza_lobs(ID_LOB);

-------------------------------------------------
-- Maior ID da DFE_LOB Considerado na Limpeza
-------------------------------------------------
DO LANGUAGE plpgsql $$
    BEGIN
		IF (NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'msaf_dfe' AND  TABLE_NAME = 'limpeza_lobs_max_id'))
		THEN
			CREATE TABLE msaf_dfe.limpeza_lobs_max_id(ID_LOB numeric(38, 0) NOT NULL,DT_CRIACAO Timestamp(3) NOT NULL);
		END IF;
	END;
$$;

INSERT INTO msaf_dfe.limpeza_lobs_max_id (ID_LOB, DT_CRIACAO) SELECT MAX(ID), NOW() FROM msaf_dfe.dfe_lob;