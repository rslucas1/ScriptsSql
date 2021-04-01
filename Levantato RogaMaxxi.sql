select 
c.cd_forn,
f.raz_soc,
convert(varchar(10), c.dt_emissao, 103) as 'dt_emissao',
convert(varchar(10), c.dt_vencto, 103) as 'vencimento',
c.nu_nf,
c.referencia,
c.situacao,
c.valor,
c.vl_juros,
c.vl_multa,
c.vl_pago,
cc.cd_conta,
CTB.descricao
 
from cta_pag c

join fornec f
ON f.cd_forn=c.cd_forn

join pag_lanc cc
on cc.seq_pag=c.seq_pag and cc.principal=1

join conta ctb
ON CTB.cd_conta=CC.cd_conta



where c.cd_forn = 40653 