--SELECT * FROM FABRIC WHERE DESCRICAO LIKE '%REC%'
--SELECT * FROM tp_ped where tp_ped='VP'
--SELECT nu_ped FROM nota where nu_nf=976958 
--SELECT tp_ped, * FROM PED_VDA where nu_ped=88048

select DISTINCT 
--ped.tp_ped, tp.descricao 
 
 CONVERT (varchar(10), c.dt_cad, 103) as 'dt_cad',
 n.cd_clien,
 c.nome,
 c.cgc_cpf,
 c.inscricao
 ,e.endereco,
 e.numero,
 e.bairro,
 e.municipio,
 e.cep,
 e.estado


from nota n


LEFT JOIN end_cli e
ON n.cd_clien=e.cd_clien

JOIN cliente c
ON c.cd_clien=n.cd_clien

join it_nota it
ON it.nu_nf=n.nu_nf

join produto p
ON p.cd_prod=it.cd_prod

JOIN fabric f
ON f.cd_fabric= p.cd_fabric

JOIN ped_vda ped
ON ped.nu_ped=n.nu_ped

JOIN tp_ped tp
ON tp.tp_ped=ped.tp_ped

WHERE p.cd_fabric in ('25550')

AND n.tipo_nf='s'

AND n.situacao IN ('AB', 'DP', 'DV')

AND n.cd_emp IN (2)

AND n.situacao is not null
--AND ped.tp_ped in ('VI')
AND ped.tp_ped not in ('PE','NP', 'MD', 'VA','OP', 'RC', 'SP', 'CC','VS','B2','BD','BF',
'BG','BO','BS','CI','EA','EF','PC','RP','RS','RT','SR','VG','VI')

and e.tp_end='FA'

ORDER BY 1