--select top 1000 * from romaneio where dt_montagem > '2020-11-20 00:00:00' and 

select I.NU_PED, I.cd_emp, r.situacao,  i.situacao, * from romaneio R

JOIN IT_ROM I
ON I.NU_ROM=R.NU_ROM

WHERE dt_montagem > '2020-11-01 00:00:00' AND I.situacao NOT IN ('CA', 'EN')