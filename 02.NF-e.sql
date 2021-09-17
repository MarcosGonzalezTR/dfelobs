--Inserindo referencias de LOBs  - Módulo NF-e
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_ret from msaf_dfe.dfe_carta_correcao_nfe where dfe_lob_ret is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_env from msaf_dfe.dfe_carta_correcao_nfe where dfe_lob_env is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_json_id from msaf_dfe.dfe_carta_correcao_nfe where dfe_lob_json_id is not null;

insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_id from msaf_dfe.dfe_historico_nfe where dfe_lob_id is not null;

insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_env_inut_id from msaf_dfe.dfe_inutilizacao_nfe where dfe_lob_env_inut_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_ret_inut_id from msaf_dfe.dfe_inutilizacao_nfe where dfe_lob_ret_inut_id is not null;

insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_id from msaf_dfe.dfe_lote_nfe where dfe_lob_xml_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_soap_id from msaf_dfe.dfe_lote_nfe where dfe_lob_xml_soap_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_ret_envio_id from msaf_dfe.dfe_lote_nfe where dfe_lob_xml_ret_envio_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_ret_consulta_id from msaf_dfe.dfe_lote_nfe where dfe_lob_xml_ret_consulta_id is not null;

insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_id from msaf_dfe.dfe_nfe where dfe_lob_xml_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_env_canc_id from msaf_dfe.dfe_nfe where dfe_lob_env_canc_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_ret_canc_id from msaf_dfe.dfe_nfe where dfe_lob_ret_canc_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_prot_env_id from msaf_dfe.dfe_nfe where dfe_lob_prot_env_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_ret_epec_id from msaf_dfe.dfe_nfe where dfe_lob_ret_epec_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_original_id from msaf_dfe.dfe_nfe where dfe_lob_xml_original_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_ret_canc_sefaz_id from msaf_dfe.dfe_nfe where dfe_lob_ret_canc_sefaz_id is not null;

insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_env_id from msaf_dfe.dfe_consulta_cadastro where dfe_lob_env_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_ret_id from msaf_dfe.dfe_consulta_cadastro where dfe_lob_ret_id is not null;

insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_env from msaf_dfe.dfe_evento_nfe where dfe_lob_env is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_ret from msaf_dfe.dfe_evento_nfe where dfe_lob_ret is not null;

insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_ret_canc_sefaz_id from msaf_dfe.dfe_evento_canc_nfe where dfe_lob_ret_canc_sefaz_id is not null;

insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_json_id from msaf_dfe.dfe_evento_carta_correcao_nfe where dfe_lob_json_id is not null;

insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_id from msaf_dfe.dfe_historico_evento_nfe where dfe_lob_id is not null;

--Inserindo referencias de LOBs  - Webservice Distribuição (NF-e e MDF-e) - Módulos NF-e e Receptor NF-e
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_id from msaf_dfe.dfe_evento_distribuicao where dfe_lob_xml_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_id from msaf_dfe.dfe_evento_mdfe_distribuicao where dfe_lob_xml_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_id from msaf_dfe.dfe_mdfe_distribuicao where dfe_lob_xml_id is not null;