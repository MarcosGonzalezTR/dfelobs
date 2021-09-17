--Inserindo referencias de LOBs  - Módulo NFS-e
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_id from msaf_dfe.dfe_rps where dfe_lob_xml_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_json_id from msaf_dfe.dfe_rps where dfe_lob_json_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_json_origem_id from msaf_dfe.dfe_rps where dfe_lob_json_origem_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_ret_canc_id from msaf_dfe.dfe_rps where dfe_lob_ret_canc_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_ret_cons_individual_id from msaf_dfe.dfe_rps where dfe_lob_ret_cons_individual_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_envio_canc_id from msaf_dfe.dfe_rps where dfe_lob_envio_canc_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_json_edicao_id from msaf_dfe.dfe_rps where dfe_lob_json_edicao_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_json_subst_id from msaf_dfe.dfe_rps where dfe_lob_json_subst_id is not null;

insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_id from msaf_dfe.dfe_historico_rps where dfe_lob_id is not null;

insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_id from msaf_dfe.dfe_lote_rps where dfe_lob_xml_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_soap_id from msaf_dfe.dfe_lote_rps where dfe_lob_xml_soap_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_ret_envio_id from msaf_dfe.dfe_lote_rps where dfe_lob_xml_ret_envio_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_ret_consulta_id from msaf_dfe.dfe_lote_rps where dfe_lob_xml_ret_consulta_id is not null;
