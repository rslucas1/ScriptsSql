--select * from empresa
--select * from entidade i where i.IDENTIDADE=1
--select * from entidade i where i.DSENTIDADE like'log%'
--select * from MACROOPERACAO m
--SELECT TOP 100 * FROM NOTATOTAL

SELECT 

n.IDNOTA, 
n.CODIGOINTERNONOTA, 
e.DSENTIDADE,
n.IDMACROOPERACAO,
m.DSMACROOPERACAO,
tn.TOTALNOTA,
n.DATAEMISSAO, 
n.IDENTIDADE,
nfe.CHAVEACESSONFE


FROM NextAgeERP.dbo.NOTA n

JOIN MACROOPERACAO m
ON m.IDMACROOPERACAO=n.IDMACROOPERACAO

JOIN NextAgeNFE.dbo.NFE nfe
ON nfe.NRONOTA=n.CODIGOINTERNONOTA

JOIN ENTIDADE e
ON e.IDENTIDADE=n.IDENTIDADE

JOIN NOTATOTAL tn
on tn.IDNOTA=N.IDNOTA


where n.IDENTIDADE=53750

--and CODIGOINTERNONOTA=22204

order by 1




