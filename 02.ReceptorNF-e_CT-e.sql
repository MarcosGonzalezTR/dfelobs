--Inserindo referencias de LOBs  - Módulo Receptor NF-e/CT-e
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_ret from msaf_dfe.dfe_carta_correcao_nfe where dfe_lob_ret is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_env from msaf_dfe.dfe_carta_correcao_nfe where dfe_lob_env is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_json_id from msaf_dfe.dfe_carta_correcao_nfe where dfe_lob_json_id is not null;

insert into msaf_dfe.limpeza_lobs (id_lob) select lob_xml_recebido from msaf_dfe.dfe_log_erro_recebimento where lob_xml_recebido is not null;

insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_envio_id from msaf_dfe.dfe_evento_manifestacao where dfe_lob_xml_envio_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_retorno_id from msaf_dfe.dfe_evento_manifestacao where dfe_lob_xml_retorno_id is not null;

insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_emissao_id from msaf_dfe.dfe_recebimento where dfe_lob_xml_emissao_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_cancelamento_id from msaf_dfe.dfe_recebimento where dfe_lob_xml_cancelamento_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_cons_emissao_id from msaf_dfe.dfe_recebimento where dfe_lob_xml_cons_emissao_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_cons_emis_ret_id from msaf_dfe.dfe_recebimento where dfe_lob_xml_cons_emis_ret_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_cons_canc_id from msaf_dfe.dfe_recebimento where dfe_lob_xml_cons_canc_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_cons_canc_ret_id from msaf_dfe.dfe_recebimento where dfe_lob_xml_cons_canc_ret_id is not null;

insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_ret from msaf_dfe.dfe_evento_cte where dfe_lob_ret is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_env from msaf_dfe.dfe_evento_cte where dfe_lob_env is not null;

insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_id from msaf_dfe.dfe_evento_cte_distribuicao where dfe_lob_xml_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_id from msaf_dfe.dfe_evento_cteos_distribuicao where dfe_lob_xml_id is not null;

--Inserindo referencias de LOBs  - Webservice Distribuição (NF-e e MDF-e) - Módulos NF-e e Receptor NF-e
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_id from msaf_dfe.dfe_evento_distribuicao where dfe_lob_xml_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_id from msaf_dfe.dfe_evento_mdfe_distribuicao where dfe_lob_xml_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_id from msaf_dfe.dfe_mdfe_distribuicao where dfe_lob_xml_id is not null;

