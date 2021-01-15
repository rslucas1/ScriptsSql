select 
E.NOME_FANT as EMPRESA,
c.cd_forn as 'CD_FORN',
f.raz_soc as 'RAZAO SOCIAL',
f.cgc_cpf as 'CNPJ',
CAST(pg.vl_pago AS MONEY) AS'VALOR',
c.nu_nf AS 'NOTA',
convert (varchar(10), pg.dt_pgto,103) AS 'DT_ PAGAMENTO',
corrente.descricao AS '__conta_corrente',
cc.cd_conta as 'CONTA CONTABIL'


from cta_pag c

join fornec f
on c.cd_forn=f.cd_forn

join pag_lanc cc
on cc.seq_pag=c.seq_pag and cc.principal=1

join pg_tpag pg
on pg.seq_pag=c.seq_pag

left join cta_cor corrente
ON corrente.nu_banco=C.nu_banco_lctc and corrente.nu_conta=c.nu_conta_lctc and c.nu_agencia_lctc = corrente.nu_agencia

JOIN EMPRESA E
ON E.CD_EMP=C.CD_EMP

WHERE cc.cd_conta IN ('200.2.21', '200.2.22', '200.2.25')

ORDER BY pg.dt_pgto DESC