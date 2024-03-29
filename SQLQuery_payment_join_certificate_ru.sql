SELECT [certificate_db].[dbo].[payment].[payment_id]
      ,[certificate_db].[dbo].[payment].[cert_key] AS "код сертификата"
      ,[certificate_db].[dbo].[payment].[pay_sum] AS "сумма платежа в копейках"
      ,[certificate_db].[dbo].[payment].[pay_time] AS "дата и время"
      ,[certificate_db].[dbo].[payment].[sarea_id] AS "ТО"
      ,[certificate_db].[dbo].[payment].[cash_desk_id] AS "касса"
      ,[certificate_db].[dbo].[payment].[sess_id]
      ,[certificate_db].[dbo].[payment].[srec_num]
      ,[certificate_db].[dbo].[certificate].[cert_value] AS "номинал сертификата в копейках"
      ,[certificate_db].[dbo].[certificate].[is_lock] AS "блокировка"
  FROM [certificate_db].[dbo].[payment] JOIN [certificate_db].[dbo].[certificate]
  ON [certificate_db].[dbo].[payment].[cert_key] = [certificate_db].[dbo].[certificate].[cert_key]
  ORDER BY [certificate_db].[dbo].[payment].[pay_time]