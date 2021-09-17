--Inserindo referencias de LOBs  - Módulo CT-e OS

insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_id from msaf_dfe.dfe_cteos where dfe_lob_xml_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_ret_id from msaf_dfe.dfe_cteos where dfe_lob_xml_ret_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_proc_id from msaf_dfe.dfe_cteos where dfe_lob_xml_proc_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_config_id from msaf_dfe.dfe_cteos where dfe_lob_config_id is not null;

insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_env from msaf_dfe.dfe_evento_cteos where dfe_lob_env is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_ret from msaf_dfe.dfe_evento_cteos where dfe_lob_ret is not null;

insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_id from msaf_dfe.dfe_historico_cteos where dfe_lob_id is not null;

insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_id from msaf_dfe.dfe_lote_cteos where dfe_lob_xml_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_soap_id from msaf_dfe.dfe_lote_cteos where dfe_lob_xml_soap_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_ret_envio_id from msaf_dfe.dfe_lote_cteos where dfe_lob_xml_ret_envio_id is not null;

insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_id from msaf_dfe.dfe_lote_inutilizacao_cteos where dfe_lob_xml_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_soap_id from msaf_dfe.dfe_lote_inutilizacao_cteos where dfe_lob_xml_soap_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_retorno_id from msaf_dfe.dfe_lote_inutilizacao_cteos where dfe_lob_xml_retorno_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_processado_id from msaf_dfe.dfe_lote_inutilizacao_cteos where dfe_lob_xml_processado_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_config_id from msaf_dfe.dfe_lote_inutilizacao_cteos where dfe_lob_config_id is not null;