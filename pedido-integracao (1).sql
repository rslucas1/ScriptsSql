--Consulta Pedido nas tabelas
SELECT bonificado,* FROM it_pedv WHERE cd_emp = 13 AND nu_ped = 946283        order by seq--AND seq = 3
SELECT AtivLogID, * FROM ItPedvLog WHERE CdEmp =13 AND NuPed = 946283        order by SeqItPedv --AND SeqItPedv = 3 -- ATIVLOGID NULL?
SELECT * FROM WMS..int_pedidodet WHERE NUMPED = '946283'  ORDER BY IDSeq
SELECT * FROM WMS..int_pedido WHERE NUMPED = '946283'


--Abre Atividade
BEGIN TRAN -- COMMIT ROLLBACK 
exec uspAtivLogSeparacaoIniciar 570374, 'ALCIS'

--Fecha Atividade
BEGIN TRAN -- COMMIT
exec uspAtivLogSeparacaoEncerrar 570374, 'ALCIS'