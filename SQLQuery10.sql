SELECT t.nu_tit_emp_fat, t.vl_pago from titrec t 



WHERE 

t.dt_emis >
 '2019-03-01 00:00:00'
 -- and '2020-04-31 00:00:00'

 and t.nu_tit_emp_fat = 185904 and cd_emp=13

group by t.nu_tit_emp_fat, t.vl_pago



select distinct  t.nu_tit_emp_fat, sum(t.vl_pago) from titrec t where t.nu_tit_emp_fat = 185904 group by t.nu_tit_emp_fat, t.vl_pago

-------------------


select distinct

n.nu_nf_emp_fat AS 'NOTA FISCAL',
sum(T.vl_pago) AS 'VL PG'

from nota n

LEFT JOIN titrec t
ON t.nu_tit = n.nu_nf


left JOIN pg_trec pg
ON t.nu_tit = pg.nu_tit AND t.serie = pg.serie

LEFT JOIN ped_vda p
ON p.nu_ped=n.nu_ped

LEFT JOIN tp_ped tp
ON tp.tp_ped=p.tp_ped

where 
n.dt_emis between '2019-03-01 00:00:00' and '2020-03-31 00:00:00'
AND desc_nat_oper IN ('VENDA MERC SUJ ICMS ST') 
AND n.tipo_nf='S'
AND N.SITUACAO NOT IN ('CA', 'DV', 'DP')

AND tp.descricao NOT IN ('VENDA N. POS ESP')
AND n.nu_nf_emp_fat=185904

group by n.nu_nf_emp_fat,  pg.vl_pago

SELECT * FROM titrec T WHERE T.nu_tit_emp_fat=185904

SELECT * FROM T.vl_pago P WHERE P.nu_tit=1704905

----------------------

select distinct

p.nu_ped AS 'NU_PED',
n.nu_nf_emp_fat AS 'NOTA FISCAL',
n.cd_clien AS 'CD_CLIEN',
n.desc_nat_oper AS 'NATUREZA OPERACAO',
tp.descricao AS 'TIPO DE PEDIDO',
n.dt_emis AS 'EMISSAO NOTA',
n.dt_ped AS 'DT_PED',
n.nfe_chave_acesso AS 'CHAVE DE ACESSO',
n.vl_tot_nf AS 'VL_TOT',
t.situacao AS 'TIT SITUA',
t.nu_tit_emp_fat AS 'NU_TITULO',
t.serie AS 'SERIE',
pg.vl_pago AS 'VL PG'


from nota n

LEFT JOIN titrec t
ON t.nu_tit = n.nu_nf

LEFT JOIN ped_vda p
ON p.nu_ped=n.nu_ped

left JOIN pg_trec pg
ON t.nu_tit = pg.nu_tit AND t.serie = pg.serie

LEFT JOIN tp_ped tp
ON tp.tp_ped=p.tp_ped


where 
n.dt_emis between '2019-03-01 00:00:00' and '2020-03-31 00:00:00'

AND tp.descricao NOT IN ('VENDA N. POS ESP')

AND n.tipo_nf='S'

AND N.SITUACAO NOT IN ('CA', 'DV', 'DP')

AND n.nu_nf_emp_fat=185904


