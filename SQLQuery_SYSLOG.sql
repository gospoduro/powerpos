/****** Сценарий для команды SelectTopNRows среды SSMS  ******/
USE [DataServer]
GO
SELECT st.*,ev.eventcontent
  FROM [SYSLOG] st
  left outer join [EVENTS] ev ON ev.eventcode = st.eventcode and ev.eventleng = 1
  where  sareaid = 3 and systemid = 31 and eventtime between '20190426185027' and '20190426191227'
  --and st.[eventdata] like '%Ошибка%'
  --and st.eventcode = 600
  order by st.SEQ