/****** Сценарий для команды SelectTopNRows среды SSMS  ******/
SELECT *
  FROM [DataServer].[dbo].[SALES]
  where sareaid = 3 and systemid = 31 and sessid = 8 and salescanc = 1
  and srecnum in (94,246)
  --and frecnum = 1899
 -- and salestag = 2 
  and salesrefund = 0