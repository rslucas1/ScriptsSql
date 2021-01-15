select distinct 
--ev.nu_ped Pedido,
--convert(varchar, p.dt_cad, 103) [DataPedido],
--ev.cd_clien Cliente,
--cl.nome Nome ,
--f.cd_fila Etapa,
SUM(cast (p.valor_tot as money)) Valor,
COUNT(ev.nu_ped
)


from evento ev
join cliente cl on cl.cd_clien = ev.cd_clien
join ped_vda p on p.nu_ped = ev.nu_ped and ev.cd_clien = p.cd_clien and ev.cd_emp = p.cd_emp
join fila f on f.cd_fila = ev.cd_fila

where  
--ev.nu_ped=961691 and
ev.situacao = 'AB' 
and ev.dt_criacao> '2020-11-01 00:00:00'
and ev.cd_emp IN (13, 20) 
and p.tp_ped not in ('PE','NP', 'MD', 'VA','OP', 'RC', 'SP', 'CC')
and ev.cd_fila IN ('BLGV','GERV', 'ADMV', 'ALTP', 'BLAV' , 'CAPV')



