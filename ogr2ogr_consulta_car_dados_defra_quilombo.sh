#!/bin/sh



while read line 
	do 

	echo $line

ogr2ogr -f "SQLite" -update -append  defra_quil_20180313_unico__geo_tabela$line.sqlite PG:"host=10.20.20.144 user=sfb dbname=car_nacional" -sql "SELECT     imovel.cod_imovel,     to_char(imovel.dat_criacao, 'DD-MM-YYYY') as dat_criacao,     imovel.cod_protocolo,     to_char(imovel.dat_protocolo, 'DD-MM-YYYY') as dat_protocolo,     imovel.flg_migracao,       to_char(imovel.dat_cadastro_estadual, 'DD-MM-YYYY') as dat_cad_estadual,    to_char(imovel.dat_atualizacao, 'DD-MM-YYYY') as dat_atualizacao,    imovel.ind_status_imovel,     imovel.ind_tipo_imovel,     imovel.nom_imovel,     municipio.idt_municipio,     municipio.nom_municipio,     municipio.cod_estado,     imovel.cod_cep,     imovel.ind_zona_localizacao,     imovel_pessoa.ind_tipo_pessoa,     imovel_pessoa.cod_cpf_cnpj,     imovel_pessoa.nom_completo,     to_char(imovel_pessoa.dat_nascimento, 'DD-MM-YYYY') as dat_nascimento,     imovel_pessoa.nom_mae,     rel_documento_imovel_pessoa.idt_rel_documento_imovel_pessoa,     documento_imovel.idt_imovel,     documento_imovel.des_denominacao,     documento_imovel.num_area,     documento_imovel.num_matricula_documento,     to_char(documento_imovel.dat_documento, 'DD-MM-YYYY') as dat_documento,     documento_imovel.des_livro,     documento_imovel.des_folha,     documento_imovel.idt_municipio_cartorio,     documento_imovel.des_emissor_documento,     documento_imovel.nom_vendedor,     documento_imovel.nom_declarante,     documento_imovel.des_termo_autodeclaracao,     documento_imovel.des_ccir,     documento_imovel.ind_tipo_documento,     documento_imovel.des_certificacao_incra,     documento_imovel.des_nirf,     documento.idt_documento,     documento.nom_documento,     documento.cod_documento,     documento.idt_tipo_documento,     tipo_documento.nom_tipo_documento,         endereco_imovel.nom_logradouro,     endereco_imovel.num_endereco,     endereco_imovel.des_complemento,     endereco_imovel.nom_bairro,     endereco_imovel.cod_cep,     endereco_imovel.des_telefone,     endereco_imovel.des_email  FROM     usr_geocar_aplicacao.imovel,     usr_geocar_aplicacao.imovel_pessoa,     usr_geocar_aplicacao.documento_imovel,     usr_geocar_aplicacao.rel_documento_imovel_documento,     usr_geocar_aplicacao.rel_documento_imovel_pessoa,     usr_geocar_aplicacao.documento,     usr_geocar_aplicacao.municipio,     usr_geocar_aplicacao.tipo_documento,     usr_geocar_aplicacao.endereco_imovel  WHERE     imovel.cod_imovel in ('MA-2111078-CF88A9553D3549F58F52AD93D8EFB711','MA-2103000-011F55C6586340159059D2DCBC493ED5','MA-2103307-6F7EE0260F4B4A569BFB56119BA59BD8','MA-2103307-86D6C74927E54D3192C6A306802552C7','MA-2103307-D3E521E1CCB14875B15C3750B3907C2C','MA-2103307-5BCA7005DC9D491C966715A7C8D70661','MA-2103307-D32BD011E4FF4DC0A3D50CF773F27BD8','MA-2103307-9CF4219394844805939DFB7D4BF69E72','MA-2103307-6B032D01A5794618B723A402A78036C3','MA-2103000-CFBB5D67CFF04080BBB164BA9A709BB6','MA-2103307-12C27BAB49E74A669EF828467F5CEF9A') AND    imovel.idt_imovel = documento_imovel.idt_imovel AND    imovel_pessoa.idt_imovel = imovel.idt_imovel AND    rel_documento_imovel_documento.idt_documento_imovel = documento_imovel.idt_documento_imovel AND    rel_documento_imovel_pessoa.idt_documento_imovel = documento_imovel.idt_documento_imovel AND    rel_documento_imovel_pessoa.idt_imovel_pessoa = imovel_pessoa.idt_imovel_pessoa AND    documento.idt_documento = rel_documento_imovel_documento.idt_documento AND    municipio.idt_municipio = imovel.idt_municipio AND    tipo_documento.idt_tipo_documento = documento.idt_tipo_documento AND    endereco_imovel.idt_imovel = imovel.idt_imovel" -nln defra_centroide -nlt POINT

ogr2ogr -f "SQLite" -update -append  defra_quil_20180313_unico__geo_tabela$line.sqlite PG:"host=10.20.20.144 user=sfb dbname=car_nacional" -sql "SELECT     imovel.cod_imovel,     to_char(imovel.dat_criacao, 'DD-MM-YYYY') as dat_criacao,     imovel.cod_protocolo,     to_char(imovel.dat_protocolo, 'DD-MM-YYYY') as dat_protocolo,     imovel.flg_migracao,       to_char(imovel.dat_cadastro_estadual, 'DD-MM-YYYY') as dat_cad_estadual,    to_char(imovel.dat_atualizacao, 'DD-MM-YYYY') as dat_atualizacao,    imovel.ind_status_imovel,     imovel.ind_tipo_imovel,     imovel.nom_imovel,     municipio.idt_municipio,     municipio.nom_municipio,     municipio.cod_estado,     imovel.cod_cep,     imovel.ind_zona_localizacao,     imovel_pessoa.ind_tipo_pessoa,     imovel_pessoa.cod_cpf_cnpj,     imovel_pessoa.nom_completo,     to_char(imovel_pessoa.dat_nascimento, 'DD-MM-YYYY') as dat_nascimento,     imovel_pessoa.nom_mae,     rel_documento_imovel_pessoa.idt_rel_documento_imovel_pessoa,     documento_imovel.idt_imovel,     documento_imovel.des_denominacao,     documento_imovel.num_area,     documento_imovel.num_matricula_documento,     to_char(documento_imovel.dat_documento, 'DD-MM-YYYY') as dat_documento,     documento_imovel.des_livro,     documento_imovel.des_folha,     documento_imovel.idt_municipio_cartorio,     documento_imovel.des_emissor_documento,     documento_imovel.nom_vendedor,     documento_imovel.nom_declarante,     documento_imovel.des_termo_autodeclaracao,     documento_imovel.des_ccir,     documento_imovel.ind_tipo_documento,     documento_imovel.des_certificacao_incra,     documento_imovel.des_nirf,     documento.idt_documento,     documento.nom_documento,     documento.cod_documento,     documento.idt_tipo_documento,     tipo_documento.nom_tipo_documento,         endereco_imovel.nom_logradouro,     endereco_imovel.num_endereco,     endereco_imovel.des_complemento,     endereco_imovel.nom_bairro,     endereco_imovel.cod_cep,     endereco_imovel.des_telefone,     endereco_imovel.des_email  FROM     usr_geocar_aplicacao.imovel,     usr_geocar_aplicacao.imovel_pessoa,     usr_geocar_aplicacao.documento_imovel,     usr_geocar_aplicacao.rel_documento_imovel_documento,     usr_geocar_aplicacao.rel_documento_imovel_pessoa,     usr_geocar_aplicacao.documento,     usr_geocar_aplicacao.municipio,     usr_geocar_aplicacao.tipo_documento,     usr_geocar_aplicacao.endereco_imovel  WHERE     imovel.cod_protocolo in ('MA-2111078-CF88A9553D3549F58F52AD93D8EFB711','MA-2103000-011F55C6586340159059D2DCBC493ED5','MA-2103307-6F7EE0260F4B4A569BFB56119BA59BD8','MA-2103307-86D6C74927E54D3192C6A306802552C7','MA-2103307-D3E521E1CCB14875B15C3750B3907C2C','MA-2103307-5BCA7005DC9D491C966715A7C8D70661','MA-2103307-D32BD011E4FF4DC0A3D50CF773F27BD8','MA-2103307-9CF4219394844805939DFB7D4BF69E72','MA-2103307-6B032D01A5794618B723A402A78036C3','MA-2103000-CFBB5D67CFF04080BBB164BA9A709BB6','MA-2103307-12C27BAB49E74A669EF828467F5CEF9A')  AND    imovel.idt_imovel = documento_imovel.idt_imovel AND    imovel_pessoa.idt_imovel = imovel.idt_imovel AND    rel_documento_imovel_documento.idt_documento_imovel = documento_imovel.idt_documento_imovel AND    rel_documento_imovel_pessoa.idt_documento_imovel = documento_imovel.idt_documento_imovel AND    rel_documento_imovel_pessoa.idt_imovel_pessoa = imovel_pessoa.idt_imovel_pessoa AND    documento.idt_documento = rel_documento_imovel_documento.idt_documento AND    municipio.idt_municipio = imovel.idt_municipio AND    tipo_documento.idt_tipo_documento = documento.idt_tipo_documento AND    endereco_imovel.idt_imovel = imovel.idt_imovel" -nln defra_prot_centroide -nlt POINT

ogr2ogr -f "SQLite" -update -append  defra_quil_20180313_unico__geo$line.sqlite PG:"host=10.20.20.144 user=sfb dbname=car_nacional"  -sql "SELECT    imovel.idt_imovel,    imovel.cod_imovel,    imovel.cod_protocolo,    rel_tema_imovel_poligono.idt_tema,    tema.nom_tema,   imovel.dat_protocolo,    imovel.ind_status_imovel,    imovel.ind_tipo_imovel,    imovel.cod_cpf_cadastrante,    imovel.nom_completo_cadastrante,    imovel.nom_imovel,    imovel.num_area_imovel as area_imovel, rel_tema_imovel_poligono.num_area as area_tema,    imovel.num_modulo_fiscal,    imovel.dat_criacao,    imovel.dat_atualizacao,    municipio.idt_municipio,    municipio.nom_municipio,    municipio.cod_estado,    rel_tema_imovel_poligono.the_geom FROM    usr_geocar_aplicacao.imovel,    usr_geocar_aplicacao.municipio,    usr_geocar_aplicacao.rel_tema_imovel_poligono,    usr_geocar_aplicacao.tema WHERE    imovel.cod_imovel in ('MA-2111078-CF88A9553D3549F58F52AD93D8EFB711','MA-2103000-011F55C6586340159059D2DCBC493ED5','MA-2103307-6F7EE0260F4B4A569BFB56119BA59BD8','MA-2103307-86D6C74927E54D3192C6A306802552C7','MA-2103307-D3E521E1CCB14875B15C3750B3907C2C','MA-2103307-5BCA7005DC9D491C966715A7C8D70661','MA-2103307-D32BD011E4FF4DC0A3D50CF773F27BD8','MA-2103307-9CF4219394844805939DFB7D4BF69E72','MA-2103307-6B032D01A5794618B723A402A78036C3','MA-2103000-CFBB5D67CFF04080BBB164BA9A709BB6','MA-2103307-12C27BAB49E74A669EF828467F5CEF9A')  AND   municipio.idt_municipio = imovel.idt_municipio AND   rel_tema_imovel_poligono.idt_imovel = imovel.idt_imovel AND   tema.idt_tema = rel_tema_imovel_poligono.idt_tema AND GeometryType(the_geom)='POLYGON'" -nln defra_area_liquida -nlt POLYGON

ogr2ogr -f "SQLite" -update -append  defra_quil_20180313_unico__geo$line.sqlite PG:"host=10.20.20.144 user=sfb dbname=car_nacional"  -sql "SELECT    imovel.idt_imovel,    imovel.cod_imovel,    imovel.cod_protocolo,    rel_tema_imovel_poligono.idt_tema,    tema.nom_tema,    imovel.dat_protocolo,    imovel.ind_status_imovel,    imovel.ind_tipo_imovel,    imovel.cod_cpf_cadastrante,    imovel.nom_completo_cadastrante,    imovel.nom_imovel,     imovel.num_area_imovel as area_imovel, rel_tema_imovel_poligono.num_area as area_tema,    imovel.num_modulo_fiscal,    imovel.dat_criacao,    imovel.dat_atualizacao,    municipio.idt_municipio,    municipio.nom_municipio,    municipio.cod_estado,    rel_tema_imovel_poligono.the_geom FROM    usr_geocar_aplicacao.imovel,    usr_geocar_aplicacao.municipio,    usr_geocar_aplicacao.rel_tema_imovel_poligono,    usr_geocar_aplicacao.tema WHERE    imovel.cod_imovel in ('MA-2111078-CF88A9553D3549F58F52AD93D8EFB711','MA-2103000-011F55C6586340159059D2DCBC493ED5','MA-2103307-6F7EE0260F4B4A569BFB56119BA59BD8','MA-2103307-86D6C74927E54D3192C6A306802552C7','MA-2103307-D3E521E1CCB14875B15C3750B3907C2C','MA-2103307-5BCA7005DC9D491C966715A7C8D70661','MA-2103307-D32BD011E4FF4DC0A3D50CF773F27BD8','MA-2103307-9CF4219394844805939DFB7D4BF69E72','MA-2103307-6B032D01A5794618B723A402A78036C3','MA-2103000-CFBB5D67CFF04080BBB164BA9A709BB6','MA-2103307-12C27BAB49E74A669EF828467F5CEF9A')  AND   municipio.idt_municipio = imovel.idt_municipio AND   rel_tema_imovel_poligono.idt_imovel = imovel.idt_imovel AND   tema.idt_tema = rel_tema_imovel_poligono.idt_tema AND GeometryType(the_geom)='MULTIPOLYGON'" -nln defra_lote_geo_temas -nlt MULTIPOLYGON


		ogr2ogr -f "SQLite" -update -append  defra_quil_20180313_unico__geo$line.sqlite PG:"host=10.20.20.144 user=sfb dbname=car_nacional"  -sql "SELECT    imovel.idt_imovel,    imovel.cod_imovel,    imovel.cod_protocolo,    rel_tema_imovel_poligono.idt_tema,    tema.nom_tema,    imovel.dat_protocolo,    imovel.ind_status_imovel,    imovel.ind_tipo_imovel,    imovel.cod_cpf_cadastrante,    imovel.nom_completo_cadastrante,    imovel.nom_imovel,     imovel.num_area_imovel as area_imovel, rel_tema_imovel_poligono.num_area as area_tema,    imovel.num_modulo_fiscal,    imovel.dat_criacao,    imovel.dat_atualizacao,    municipio.idt_municipio,    municipio.nom_municipio,    municipio.cod_estado,    rel_tema_imovel_poligono.the_geom FROM    usr_geocar_aplicacao.imovel,    usr_geocar_aplicacao.municipio,    usr_geocar_aplicacao.rel_tema_imovel_poligono,    usr_geocar_aplicacao.tema WHERE    imovel.cod_protocolo in ('MA-2111078-CF88A9553D3549F58F52AD93D8EFB711','MA-2103000-011F55C6586340159059D2DCBC493ED5','MA-2103307-6F7EE0260F4B4A569BFB56119BA59BD8','MA-2103307-86D6C74927E54D3192C6A306802552C7','MA-2103307-D3E521E1CCB14875B15C3750B3907C2C','MA-2103307-5BCA7005DC9D491C966715A7C8D70661','MA-2103307-D32BD011E4FF4DC0A3D50CF773F27BD8','MA-2103307-9CF4219394844805939DFB7D4BF69E72','MA-2103307-6B032D01A5794618B723A402A78036C3','MA-2103000-CFBB5D67CFF04080BBB164BA9A709BB6','MA-2103307-12C27BAB49E74A669EF828467F5CEF9A')  AND   municipio.idt_municipio = imovel.idt_municipio AND   rel_tema_imovel_poligono.idt_imovel = imovel.idt_imovel AND   tema.idt_tema = rel_tema_imovel_poligono.idt_tema AND GeometryType(the_geom)='POLYGON'" -nln defra_prot_area_liquida -nlt POLYGON

ogr2ogr -f "SQLite" -update -append  defra_quil_20180313_unico__geo$line.sqlite PG:"host=10.20.20.144 user=sfb dbname=car_nacional"  -sql "SELECT    imovel.idt_imovel,    imovel.cod_imovel,    imovel.cod_protocolo,    rel_tema_imovel_poligono.idt_tema,    tema.nom_tema,    imovel.dat_protocolo,    imovel.ind_status_imovel,    imovel.ind_tipo_imovel,    imovel.cod_cpf_cadastrante,    imovel.nom_completo_cadastrante,    imovel.nom_imovel,     imovel.num_area_imovel as area_imovel, rel_tema_imovel_poligono.num_area as area_tema,    imovel.num_modulo_fiscal,    imovel.dat_criacao,    imovel.dat_atualizacao,    municipio.idt_municipio,    municipio.nom_municipio,    municipio.cod_estado,    rel_tema_imovel_poligono.the_geom FROM    usr_geocar_aplicacao.imovel,    usr_geocar_aplicacao.municipio,    usr_geocar_aplicacao.rel_tema_imovel_poligono,    usr_geocar_aplicacao.tema WHERE    imovel.cod_protocolo in ('MA-2111078-CF88A9553D3549F58F52AD93D8EFB711','MA-2103000-011F55C6586340159059D2DCBC493ED5','MA-2103307-6F7EE0260F4B4A569BFB56119BA59BD8','MA-2103307-86D6C74927E54D3192C6A306802552C7','MA-2103307-D3E521E1CCB14875B15C3750B3907C2C','MA-2103307-5BCA7005DC9D491C966715A7C8D70661','MA-2103307-D32BD011E4FF4DC0A3D50CF773F27BD8','MA-2103307-9CF4219394844805939DFB7D4BF69E72','MA-2103307-6B032D01A5794618B723A402A78036C3','MA-2103000-CFBB5D67CFF04080BBB164BA9A709BB6','MA-2103307-12C27BAB49E74A669EF828467F5CEF9A')  AND   municipio.idt_municipio = imovel.idt_municipio AND   rel_tema_imovel_poligono.idt_imovel = imovel.idt_imovel AND   tema.idt_tema = rel_tema_imovel_poligono.idt_tema AND GeometryType(the_geom)='MULTIPOLYGON'" -nln defra_prot_temas -nlt MULTIPOLYGON




done < /rede/image03/DEFRA/gecaf/lotes_analise/20180313/20180313.txt


