------------------------------------------------------------------------------------------------------------
-- Métricas da Base de dados
------------------------------------------------------------------------------------------------------------
select * from msaf_dfe.limpeza_lobs_max_id;

DO LANGUAGE plpgsql $$
declare
	QTDE_LIMPEZA_LOBS_ANTES integer;
	QTDE_DFE_LOB_LIMPEZA integer;
	QTDE_DFE_LOB integer;
begin   
	select count(id_lob) INTO QTDE_LIMPEZA_LOBS_ANTES from msaf_dfe.limpeza_lobs;
	select count(a.id) INTO QTDE_DFE_LOB_LIMPEZA from msaf_dfe.dfe_lob a left join msaf_dfe.limpeza_lobs b on a.id = b.id_lob where b.id_lob is null and a.id < (select ID_LOB from msaf_dfe.limpeza_lobs_max_id where DT_CRIACAO IN (SELECT MAX(DT_CRIACAO) from msaf_dfe.limpeza_lobs_max_id));
	select count(id)  INTO QTDE_DFE_LOB from msaf_dfe.dfe_lob;
	raise notice '% as qtde_limpeza_lobs_antes, % as QTDE_DFE_LOB_LIMPEZA, % as QTDE_DFE_LOB', QTDE_LIMPEZA_LOBS_ANTES, QTDE_DFE_LOB_LIMPEZA, QTDE_DFE_LOB;
end; 
$$
