select 
	MONTH(n.dt_emis) as 'mes nota',
	YEAR(dt_emis) as 'ano_nota',
	count (distinct(n.cd_clien)) as 'positivacao'


from ped_vda p

join vendedor v
on p.cd_vend=v.cd_vend

join cliente c
on c.cd_clien = p.cd_clien

JOIN EMPRESA E
on p.cd_emp=e.cd_emp


JOIN nota N
ON N.nu_ped = P.nu_ped AND N.cd_emp=P.cd_emp

JOIN it_nota it
ON it.nu_nf=n.nu_nf

JOIN produto pr
ON it.cd_prod=pr.cd_prod

JOIN fabric f
ON F.cd_fabric=pr.cd_fabric 


where 
	n.dt_emis BETWEEN '2012-01-01 00:00:00' AND '2018-04-30 23:59:59' AND 
	n.desc_nat_oper NOT IN ('REM. BONIF/DOAÇÃO/BRINDE','REMESSA DE BONIFICACAO','DEVOL.FORNECEDOR FORA EST.','DEVOLUÇAO MERC SUJ SUBS.TRIBUT','BONIF/DOAÇÃO/BRINDE','DEVOLUÇÃO A FORNECEDOR','DEVOLUÇÃO MERC SUJ SUBST TRIB') and --INCLUIDO
	n.tipo_nf='S' AND n.situacao NOT IN ('CA') AND --INCLUIDO
	p.cd_emp IN (2, 9)  and
	p.tp_ped not in ('PE','NP', 'MD', 'VA','OP', 'RC', 'SP', 'CC') AND 
	p.situacao NOT IN ('CA')  and p.cd_clien NOT IN (87379, 62379)
	and f.cd_fabric='25550'
	and n.nfe_chave_acesso is not null
	

	group by MONTH(n.dt_emis),YEAR(dt_emis)

	order by 2,1