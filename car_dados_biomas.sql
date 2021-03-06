create table proc_sfb.car_biomas_total as select geoadmin_5505_bioma.idt_tipo_bioma,
geoadmin_5505_bioma.nome,
count(idt_imovel) as imoveis,
sum(num_area_imovel) as area_imovel,
sum(num_area_reserva_legal_proposta) as rl_prop,
sum(num_area_reserva_legal_averbada) as rl_averb,sum(num_area_app_recompor) as a_app_recompor ,
sum(num_area_app_vegetacao_nativa) as a_app_rvn ,
sum(num_area_reserva_legal_vegetacao_nativa) as a_rl_rvn ,
sum(num_area_vegetacao_nativa) as a_rvn ,
sum(num_area_consolidada) as a_consolidada ,
sum(num_area_antropizada) as a_antropizada ,
sum(num_area_pousio) as a_pousio ,
sum(num_area_preservacao_permanente) as a_app ,
sum(num_area_reserva_legal) as a_rl,
sum(num_area_reserva_legal_minima_lei) as rl_minlei,
sum(num_area_reserva_legal_excedente_passivo) as esc_pass,
sum(num_area_reserva_legal_recompor_area_consolidada) as a_rl_rec_cons ,
sum(num_area_reserva_legal_recompor_area_antropizada) as a_rl_rec_antrop

FROM (
select distinct on (idt_imovel) imovel.idt_imovel,
 idt_tipo_bioma,
imovel.num_area_imovel,
num_area_reserva_legal_proposta,
num_area_reserva_legal_averbada,
num_area_reserva_legal_aprovada_nao_averbada,
num_area_app_recompor,
num_area_app_vegetacao_nativa,
num_area_reserva_legal_vegetacao_nativa,
num_area_vegetacao_nativa,
num_area_consolidada,
num_area_antropizada,
num_area_pousio,
num_area_preservacao_permanente,
num_area_reserva_legal,
num_area_reserva_legal_minima_lei,
num_area_reserva_legal_excedente_passivo,
num_area_reserva_legal_recompor_area_consolidada,
num_area_reserva_legal_recompor_area_antropizada
FROM
usr_geocar_aplicacao.imovel,relatorio.quadro_area,geo_admin_published_layers.geoadmin_5505_bioma
WHERE 
 st_intersects(imovel.geo_area_imovel, geoadmin_5505_bioma.the_geom) and 
 imovel.ind_status_imovel in ('AT','PE') AND
quadro_area.idt_imovel = imovel.idt_imovel ) tabela,
geo_admin_published_layers.geoadmin_5505_bioma
where tabela.idt_tipo_bioma = geoadmin_5505_bioma.idt_tipo_bioma
group by geoadmin_5505_bioma.idt_tipo_bioma, nome
order by geoadmin_5505_bioma.idt_tipo_bioma, nome
;
