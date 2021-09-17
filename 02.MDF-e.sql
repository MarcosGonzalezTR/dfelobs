--Inserindo referencias de LOBs  - Módulo MDF-e
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_ret from msaf_dfe.dfe_evento_mdfe where dfe_lob_ret is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_env from msaf_dfe.dfe_evento_mdfe where dfe_lob_env is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_id from msaf_dfe.dfe_evento_mdfe where dfe_lob_xml_id is not null;

insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_id from msaf_dfe.dfe_historico_mdfe where dfe_lob_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_id from msaf_dfe.dfe_historico_evento_mdfe where dfe_lob_id is not null;

insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_id from msaf_dfe.dfe_lote_mdfe where dfe_lob_xml_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_soap_id from msaf_dfe.dfe_lote_mdfe where dfe_lob_xml_soap_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_ret_envio_id from msaf_dfe.dfe_lote_mdfe where dfe_lob_xml_ret_envio_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_ret_consulta_id from msaf_dfe.dfe_lote_mdfe where dfe_lob_xml_ret_consulta_id is not null;

insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_id from msaf_dfe.dfe_mdfe where dfe_lob_xml_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_ret_id from msaf_dfe.dfe_mdfe where dfe_lob_xml_ret_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_config_id from msaf_dfe.dfe_mdfe where dfe_lob_config_id is not null;
