select top 1000 n.nu_nf_emp_fat, n.nu_nf , n.nu_ped, n.cd_clien, n.nome, n.dt_emis, n.desc_nat_oper, vl_tot_nf from nota n

LEFT JOIN titrec t
ON t.

where n.cd_emp=13

and n.dt_emis between '2019-03-01 00:00:00' and '2020-03-31 00:00:00'