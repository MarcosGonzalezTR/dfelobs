--Inserindo referencias de LOBs  - Módulo CT-e
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_id from msaf_dfe.dfe_cte where dfe_lob_xml_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_ret_id from msaf_dfe.dfe_cte where dfe_lob_xml_ret_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_proc_id from msaf_dfe.dfe_cte where dfe_lob_xml_proc_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_env_canc_id from msaf_dfe.dfe_cte where dfe_lob_env_canc_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_ret_canc_id from msaf_dfe.dfe_cte where dfe_lob_ret_canc_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_canc_proc_id from msaf_dfe.dfe_cte where dfe_lob_canc_proc_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_config_id from msaf_dfe.dfe_cte where dfe_lob_config_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_config_canc_id from msaf_dfe.dfe_cte where dfe_lob_config_canc_id is not null;

insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_ret from msaf_dfe.dfe_evento_cte where dfe_lob_ret is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_env from msaf_dfe.dfe_evento_cte where dfe_lob_env is not null;

insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_id from msaf_dfe.dfe_historico_cte where dfe_lob_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_id from msaf_dfe.dfe_historico_evento_cte where dfe_lob_id is not null;

insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_id from msaf_dfe.dfe_lote_cte where dfe_lob_xml_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_soap_id from msaf_dfe.dfe_lote_cte where dfe_lob_xml_soap_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_ret_envio_id from msaf_dfe.dfe_lote_cte where dfe_lob_xml_ret_envio_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_ret_consulta_id from msaf_dfe.dfe_lote_cte where dfe_lob_xml_ret_consulta_id is not null;

insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_id from msaf_dfe.dfe_lote_inutilizacao_cte where dfe_lob_xml_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_soap_id from msaf_dfe.dfe_lote_inutilizacao_cte where dfe_lob_xml_soap_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_retorno_id from msaf_dfe.dfe_lote_inutilizacao_cte where dfe_lob_xml_retorno_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_processado_id from msaf_dfe.dfe_lote_inutilizacao_cte where dfe_lob_xml_processado_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_config_id from msaf_dfe.dfe_lote_inutilizacao_cte where dfe_lob_config_id is not null;
