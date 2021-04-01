
select DISTINCT 
cd_prod,
CONVERT (INT, SUM(qtde)) AS 'QTD TOTAL',
CONVERT (INT, sum (qtde_pend_pedv)) AS 'PENDENTE',
CONVERT (INT, SUM(QTDE - qtde_pend_pedv) )AS 'DISPONIVEL'

from estoque where 
cd_local IN ('CENTRAL') AND cd_emp IN (13,20)


GROUP BY   cd_prod

order by 1
