--TESTE
SELECT * FROM ped_vda_ele

   WHERE cd_emp_ele IN (13,20) 
  AND situacao IN ('ab')
  AND pend_ele_libera_auto IS NULL

  --TOTAL
SELECT COUNT(PedVdaEleID), SUM(valor_tot)  FROM ped_vda_ele
  WHERE cd_emp_ele IN (13,20) 
  AND situacao IN ('ab')
  AND pend_ele_libera_auto IS NULL

  --ULTIMOPED
  SELECT TOP 1 CONVERT(VARCHAR(10),dt_ped,103)AS 'DATA' FROM [MOINHO].[dbo].[ped_vda_ele]
  WHERE cd_emp_ele IN (13,20) 
  AND situacao IN ('ab')
  --AND cd_clien IN (51029, 13089, 39974) 
  AND pend_ele_libera_auto IS NULL
  ORDER BY dt_ped ASC