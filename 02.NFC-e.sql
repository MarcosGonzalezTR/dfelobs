--Inserindo referencias de LOBs  - Módulo NFC-e
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_id from msaf_dfe.dfe_historico_nfce where dfe_lob_id is not null;

insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_env_inut_id from msaf_dfe.dfe_inutilizacao_nfce where dfe_lob_env_inut_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_ret_inut_id from msaf_dfe.dfe_inutilizacao_nfce where dfe_lob_ret_inut_id is not null;

insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_id from msaf_dfe.dfe_lote_nfce where dfe_lob_xml_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_soap_id from msaf_dfe.dfe_lote_nfce where dfe_lob_xml_soap_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_ret_envio_id from msaf_dfe.dfe_lote_nfce where dfe_lob_xml_ret_envio_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_ret_consulta_id from msaf_dfe.dfe_lote_nfce where dfe_lob_xml_ret_consulta_id is not null;

insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_id from msaf_dfe.dfe_nfce where dfe_lob_xml_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_env_canc_id from msaf_dfe.dfe_nfce where dfe_lob_env_canc_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_ret_canc_id from msaf_dfe.dfe_nfce where dfe_lob_ret_canc_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_prot_env_id from msaf_dfe.dfe_nfce where dfe_lob_prot_env_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_ret_epec_id from msaf_dfe.dfe_nfce where dfe_lob_ret_epec_id is not null;

insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_env from msaf_dfe.dfe_evento_nfce where dfe_lob_env is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_ret from msaf_dfe.dfe_evento_nfce where dfe_lob_ret is not null;

insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_id from msaf_dfe.dfe_historico_evento_nfce where dfe_lob_id is not null;
