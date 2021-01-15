select top 1000

--c.cd_forn as 'CD_FORN',
f.raz_soc as 'RAZAO SOCIAL',
--f.cgc_cpf as 'CNPJ',
--CAST(pg.vl_pago AS MONEY) AS'VALOR',
--convert (varchar(10), pg.dt_pgto,103) AS 'DT_ PAGAMENTO',
CTB.descricao AS 'CONTA CONTABIL',
--cc.cd_conta as 'CONTA CONTABIL',
--ccpg.cd_ccusto,
CCUSTO.descricao AS 'CENTRO DE CUSTO',
sum(ccpg.valor) AS 'VALOR RATEADO'


from cta_pag c

join fornec f
on c.cd_forn=f.cd_forn

join pag_lanc cc
on cc.seq_pag=c.seq_pag and cc.principal=1

join pg_tpag pg
on pg.seq_pag=c.seq_pag

JOIN EMPRESA E
ON E.CD_EMP=C.CD_EMP

LEFT JOIN pag_ccus ccpg
ON ccpg.seq_pag = C.seq_pag

join ccusto CCUSTO
ON CCUSTO.cd_ccusto=ccpg.cd_ccusto

join conta ctb
ON CTB.cd_conta=CC.cd_conta
 
WHERE cc.cd_conta NOT IN ('8.1.1')
and c.dt_vencto between '2020-12-01 00:00:00' and '2020-12-31 00:00:00'
and c.situacao='LQ'

GROUP BY CTB.descricao, f.raz_soc,  CCUSTO.descricao, ccpg.valor

