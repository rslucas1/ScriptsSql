
select DISTINCT 
--p.nu_ped,
--p.cd_vend,
--v.nome, 
E.nome_fant as 'EMPRESA', 
c.cd_clien as 'COD CLIENTE',
c.nome AS 'CLIENTE', 
--p.valor_tot,
--n.vl_tot_nf,
--n.situacao, 

--CONVERT(varchar(10),p.dt_cad,103) as dt_cad,
CONVERT(varchar(10),N.dt_emis,103) as 'EMISSAO NOTA',
--n.desc_nat_oper,
n.nfe_chave_acesso AS 'CHAVE DE ACESSO'
--n.nu_nf

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
	n.dt_emis BETWEEN '2018-01-01 00:00:00' AND '2018-12-31 23:59:00' AND 
	n.desc_nat_oper NOT IN ('REM. BONIF/DOAÇÃO/BRINDE','REMESSA DE BONIFICACAO','DEVOL.FORNECEDOR FORA EST.','DEVOLUÇAO MERC SUJ SUBS.TRIBUT','BONIF/DOAÇÃO/BRINDE','DEVOLUÇÃO A FORNECEDOR','DEVOLUÇÃO MERC SUJ SUBST TRIB') and --INCLUIDO
	n.tipo_nf='S' AND n.situacao NOT IN ('CA') AND --INCLUIDO
	p.cd_emp IN (2, 9)  and
	p.tp_ped not in ('PE','NP', 'MD', 'VA','OP', 'RC', 'SP', 'CC') AND 
	p.situacao NOT IN ('CA')  and p.cd_clien NOT IN (87379, 62379)
	and f.cd_fabric='25550'
	and n.nfe_chave_acesso is not null
	 
	

	group by 

	c.cd_clien,
	c.nome, 
	
	n.vl_tot_nf,
	n.situacao, 
	E.nome_fant, 
	--n.desc_nat_oper,
	n.dt_emis,
	n.nfe_chave_acesso
	

	order by 4 ASC