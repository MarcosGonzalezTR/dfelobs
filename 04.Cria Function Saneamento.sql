CREATE OR REPLACE FUNCTION do_cleanup() RETURNS void AS $$
DECLARE
	v_l_range	     int:=1000;
	v_l_maior_id_lob int;
	v_l_id_ini       int:= 0;
	v_l_id_fim       int;
	v_qtde_restante  int;
BEGIN
	--DEFAULTS
	select ID_LOB INTO v_l_maior_id_lob from msaf_dfe.limpeza_lobs_max_id where DT_CRIACAO IN (SELECT MAX(DT_CRIACAO) from msaf_dfe.limpeza_lobs_max_id);
	v_l_id_fim := v_l_range;
	SELECT COUNT(*) INTO v_qtde_restante from msaf_dfe.dfe_lob lob;
	
	--INICIANDO
	RAISE NOTICE '% Maior ID, % Range', v_l_maior_id_lob, v_l_range;
	RAISE NOTICE 'Iniciando % qtde lob, % ID Inicial, % ID Final', v_qtde_restante, v_l_id_ini, v_l_id_fim;	
	
	LOOP
		delete from msaf_dfe.dfe_lob
		 where msaf_dfe.dfe_lob.id >= v_l_id_ini
		   and msaf_dfe.dfe_lob.id <= v_l_id_fim
		   and msaf_dfe.dfe_lob.id not in (select * from msaf_dfe.limpeza_lobs
		                                           where msaf_dfe.limpeza_lobs.ID_LOB >= v_l_id_ini
	                                             	and msaf_dfe.limpeza_lobs.ID_LOB <= v_l_id_fim);
	
		
		--SETA VARIAVEIS APOS TRANSACAO
		v_l_id_ini := v_l_id_ini + v_l_range;
		v_l_id_fim := v_l_id_fim + v_l_range;
		   
		if v_l_id_fim > v_l_maior_id_lob then
		   v_l_id_fim := v_l_maior_id_lob;
		end if;
	
		--EXECUTAR NOVAMENTE TRANSACAO ELIMINACAO	
		RAISE NOTICE 'Em andamento. % ID Inicial, % ID Final', v_l_id_ini, v_l_id_fim;
		EXIT WHEN (v_l_id_ini >= v_l_maior_id_lob);
	END LOOP;
	
	--FINALIZADO
	raise NOTICE 'Finalizado. % qtde lob restante', v_qtde_restante;
END;
$$ LANGUAGE plpgsql;


SELECT do_cleanup();