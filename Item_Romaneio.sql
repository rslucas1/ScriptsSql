select i.nu_ped, convert(varchar(10),p.dt_cad,103) as 'dt_cad', p.cd_clien, c.nome, e.nome_fant,n.nu_nf_emp_fat,n.vl_tot_nf
from it_rom i 
 join empresa e
 on e.cd_emp=i.cd_emp
 join ped_vda p
 on p.nu_ped=i.nu_ped and p.cd_emp=i.cd_emp
 join cliente c
 on p.cd_clien=c.cd_clien
 join nota n
 on n.nu_nf=i.nu_nf
 where nu_rom=62711146

select sum(n.vl_tot_nf), COUNT(i.nu_nf)
from it_rom i 
 join nota n
 on n.nu_nf=i.nu_nf and i.cd_emp=n.cd_emp
  where nu_rom=62711146



