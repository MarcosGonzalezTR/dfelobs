--Inserindo referencias de LOBs  - Módulo Receptor NFS-e
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_id from msaf_dfe.dfe_historico_nfs where dfe_lob_id is not null;

insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_envio_id from msaf_dfe.dfe_lote_nfs where dfe_lob_xml_envio_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_envio_soap_id from msaf_dfe.dfe_lote_nfs where dfe_lob_xml_envio_soap_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_retorno_id from msaf_dfe.dfe_lote_nfs where dfe_lob_xml_retorno_id is not null;

insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_xml_id from msaf_dfe.dfe_nfs where dfe_lob_xml_id is not null;
insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_json_id from msaf_dfe.dfe_nfs where dfe_lob_json_id is not null;

insert into msaf_dfe.limpeza_lobs (id_lob) select dfe_lob_id from msaf_dfe.dfe_historico_rcpnfs_proces where dfe_lob_id is not null;
