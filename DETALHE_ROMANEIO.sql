--select * from romaneio where nu_rom = 618117
--select * from motor
--select * from veic_ent
--select * from it_rom where nu_rom=618117

select distinct r.nu_rom, r.descricao, r.cd_motor, r.dt_montagem, m.nome,  r.cd_veic_ent, v.descricao, v.placa
from romaneio r
left join motor m
on m.cd_motor=r.cd_motor
left join veic_ent v
on r.cd_veic_ent = v.cd_veic_ent
left join it_rom it
on it.nu_rom = r.nu_rom
left join nota n
on n.nu_nf=it.nu_nf
where r.nu_rom=619118



select * from motor where cd_motor='MOTPAD'
