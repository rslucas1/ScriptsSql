USE [DBA]
GO

/****** Object:  View [dbo].[V_DB_WMSPRD_ESTOQUE_TOTAL]    Script Date: 03/03/2021 09:26:00 ******/
SET ANSI_NULLS ON
SELECT 
--QUANTEN.BEREICH ,
--QUANTEN.PLATZ ,
QUANTEN.ID_ARTIKEL ,

--ARTIKEL.BEZ_1 , 
ARTIKEL.CODE_EAN ,
ARTIKEL.EINH_MNG,
QUANTEN.STAT_QK,

--CASE QUANTEN.KNZ_IN_BEW
--    WHEN '1' THEN 'S'
--     ELSE 'N'
--    END AS MOVIMENTACAO,
    
--QUANTEN.CHARGE, 
--QUANTEN.NR_LE_1,
--QUANTEN.TYP_LE_1,
sum(QUANTEN.MNG_FREI) AS "TOTAL DISP"
--QUANTEN.MNG_RES_AUF
--QUANTEN.MNG_ZUGANG,
--to_char(QUANTEN.DATUM_VERFALL,'dd/mm/yyyy')  VALIDADE,
--(QUANTEN.MNG_FREI + QUANTEN.MNG_RES_AUF) AS "TOTAL"

FROM AG_CORE.ARTIKEL, AG_CORE.QUANTEN 
WHERE ARTIKEL.ID_ARTIKEL = QUANTEN.ID_ARTIKEL
AND ARTIKEL.ID_KLIENT =QUANTEN.ID_KLIENT
AND QUANTEN.ID_KLIENT= '001'
AND STAT_QK IN ('00')
AND QUANTEN.ID_ARTIKEL ='LOG11712'


group by QUANTEN.ID_ARTIKEL , ARTIKEL.CODE_EAN ,ARTIKEL.EINH_MNG,QUANTEN.STAT_QK