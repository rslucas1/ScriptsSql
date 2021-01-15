select distinct

p.nu_ped AS 'NU_PED',
n.nu_nf_emp_fat AS 'NOTA FISCAL',
n.cd_clien AS 'CD_CLIEN',
n.cd_emp AS 'CD_EMP',
n.desc_nat_oper AS 'NATUREZA OPERACAO',
tp.descricao AS 'TIPO DE PEDIDO',
n.dt_emis AS 'EMISSAO NOTA',
n.dt_ped AS 'DT_PED',
n.nfe_chave_acesso AS 'CHAVE DE ACESSO',
n.nfe_situacao AS 'NFE SIT',
n.nu_nf AS 'PK',
n.nu_ped AS 'NU_PED',
n.vl_tot_nf AS 'VL_TOT',
t.situacao AS 'TIT SITUA',
t.nu_tit_emp_fat AS 'NU_TITULO',
t.serie AS 'SERIE',
pg.vl_pago AS 'VL PG'
--at.ativlogid AS 'ATIVIDADE LOGISTICA'


from nota n

LEFT JOIN titrec t
ON t.nu_tit = n.nu_nf

LEFT JOIN ped_vda p
ON p.nu_ped=n.nu_ped

left JOIN pg_trec pg
ON t.nu_tit = pg.nu_tit

LEFT JOIN tp_ped tp
ON tp.tp_ped=p.tp_ped

--LEFT JOIN ItPedvLog at
--ON at.nuped=n.nu_ped

where 
n.dt_emis between '2019-03-01 00:00:00' and '2020-03-31 00:00:00'

--AND n.desc_nat_oper NOT IN ('DEVOL.MERC.SUJ.SUBST.TRIB.')

AND n.tipo_nf='S'
