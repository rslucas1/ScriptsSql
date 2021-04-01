select * from(
	SELECT 

		e.cd_prod as produto, --coluna
		p.descricao,
		f.descricao as 'fabricante',
		p.cd_linha,
		l.descricao as 'linha',
		p.unid_est,
		e.cd_emp as cd_emp, --pívot
		e.qtde as qtd -- valor
		

	FROM estoque e
	
	JOIN PRODUTO p
	ON p.cd_prod=e.cd_prod
	
	JOIN fabric f
	ON f.cd_fabric=p.cd_fabric

	JOIN LINHA l
	ON l.cd_linha=p.cd_linha

	where
		e.cd_local='central' and
		((e.cd_emp in (13) and e.qtde > 0 )or (e.cd_emp in (20) and e.qtde > 0 ))

		--INSUMOS

		and p.cd_linha NOT IN ('300', '3501','3584','7452','DYSD','DISR','DES','MC','3511','HL', 'GERA')
		and f.descricao NOT IN ('CROWN LIFT TRUCKS DO BRASIL','DATASUPRI',
		'DELL COMPUTADORES','ESPACIAL SUP DE ESCRITORIO','GAVETEIRO COMERCIO IMPORT','OKI COMERCIO DE MATERIAIS DE','OUTROS') 
		
		group by e.cd_prod, p.descricao, f.descricao,p.cd_linha, l.descricao, p.unid_est,e.cd_emp,e.qtde

	 
) em_linha
pivot (sum(qtd) for cd_emp IN ([20],[13])) em_colunas
ORDER BY 3