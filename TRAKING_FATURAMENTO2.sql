--**********************QTD E VALOR TOTAL FATURADO ERPxWMS*************************************************
select DISTINCT
--n.situacao,
--n.cd_emp,
--p.nu_ped
--n.vl_tot_nf,
--p.cd_emp,
COUNT(p.nu_ped) AS 'QTD',
sum(p.valor_tot) as 'VL TOTAL FAT'

from ped_vda p

left join nota n
on p.nu_ped=n.nu_ped and p.cd_emp=n.cd_emp

FULL OUTER JOIN      OPENQUERY(WMSPRD, 'SELECT NR_AUF,STAT,CNPJ_PROPRIETARIO_ERP, HINW_ZUST, ART_EING FROM AUFTRAEGE ' ) AS WMST 
                        ON WMST.NR_AUF = cast(P.nu_ped as varchar)

where

STAT IN (75) 
AND n.vl_tot_nf IS NULL
AND WMST.HINW_ZUST IS NULL 
AND WMST.ART_EING != 'MAN' 
AND P.dt_cad> '2020-12-01'

--group by n.nu_ped, valor_tot, p.nu_ped, n.situacao



--**********************ULTIMO PEDIDO*************************************************

select DISTINCT TOP 1
CONVERT(VARCHAR(10), p.dt_cad, 103) AS 'ULTIMO PEDIDO',
--p.nu_ped,
n.situacao
--n.vl_tot_nf

from ped_vda p

left join nota n
on p.nu_ped=n.nu_ped and p.cd_emp=n.cd_emp

FULL OUTER JOIN      OPENQUERY(WMSPRD, 'SELECT NR_AUF,STAT,CNPJ_PROPRIETARIO_ERP, HINW_ZUST, ART_EING FROM AUFTRAEGE ' ) AS WMST 
                        ON WMST.NR_AUF = cast(P.nu_ped as varchar)

where

STAT IN (75) 
AND n.vl_tot_nf IS NULL
AND WMST.HINW_ZUST IS NULL 
AND WMST.ART_EING != 'MAN' 
AND P.dt_cad> '2020-12-01'

order by 1 ASC



