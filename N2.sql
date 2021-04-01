--select DISTINCT N.desc_nat_oper, N.desc_cfop from nota n where n.tipo_nf='E' 

--select TOP 100 * FROM  nota n where n.tipo_nf='E' AND N.desc_cfop='1202'

--select top 1000 * from nfe_it_pedc

select * from nfe_entrada n

left join fornec forn
on forn.cd_forn=n.cd_forn

--left join nfe_it_pedc it
--on it.seq_nfe=n.seq_nfe

where n.data_importacao between '2019-03-01 00:00:00' and '2020-03-31 23:59:00'



