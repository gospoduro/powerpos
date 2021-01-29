DECLARE @n VARCHAR(55)
SET @n = 'd:\backup\sql\CashDesk_'+ CONVERT(varchar(15),CONVERT(date, GETDATE())) +'_'+ replace(CONVERT(varchar,GETDATE(),8),':','') +'.bak'
BACKUP DATABASE [CashDesk] TO DISK = @n WITH NOFORMAT, NOINIT,  NAME = N'CashDesk', NOSKIP, REWIND, NOUNLOAD,  STATS = 10
GO
DECLARE @n VARCHAR(55)
SET @n = 'd:\backup\sql\certificate_db_'+ CONVERT(varchar(15),CONVERT(date, GETDATE())) +'_'+ replace(CONVERT(varchar,GETDATE(),8),':','') +'.bak'
BACKUP DATABASE [certificate_db] TO DISK = @n WITH NOFORMAT, NOINIT,  NAME = N'certificate_db', NOSKIP, REWIND, NOUNLOAD,  STATS = 10
GO
DECLARE @n VARCHAR(55)
SET @n = 'd:\backup\sql\DataServer_'+ CONVERT(varchar(15),CONVERT(date, GETDATE())) +'_'+ replace(CONVERT(varchar,GETDATE(),8),':','') +'.bak'
BACKUP DATABASE [DataServer] TO DISK = @n WITH NOFORMAT, NOINIT,  NAME = N'DataServer', NOSKIP, REWIND, NOUNLOAD,  STATS = 10
GO
DECLARE @n VARCHAR(55)
SET @n = 'd:\backup\sql\MobileDataServer_'+ CONVERT(varchar(15),CONVERT(date, GETDATE())) +'_'+ replace(CONVERT(varchar,GETDATE(),8),':','') +'.bak'
BACKUP DATABASE [MobileDataServer] TO DISK = @n WITH NOFORMAT, NOINIT,  NAME = N'MobileDataServer', NOSKIP, REWIND, NOUNLOAD,  STATS = 10
GO
DECLARE @n VARCHAR(55)
SET @n = 'd:\backup\sql\MobileDocManager_'+ CONVERT(varchar(15),CONVERT(date, GETDATE())) +'_'+ replace(CONVERT(varchar,GETDATE(),8),':','') +'.bak'
BACKUP DATABASE [MobileDocManager] TO DISK = @n WITH NOFORMAT, NOINIT,  NAME = N'MobileDocManager', NOSKIP, REWIND, NOUNLOAD,  STATS = 10
GO
DECLARE @n VARCHAR(55)
SET @n = 'd:\backup\sql\PCashDesk_'+ CONVERT(varchar(15),CONVERT(date, GETDATE())) +'_'+ replace(CONVERT(varchar,GETDATE(),8),':','') +'.bak'
BACKUP DATABASE [PCashDesk] TO DISK = @n WITH NOFORMAT, NOINIT,  NAME = N'PCashDesk', NOSKIP, REWIND, NOUNLOAD,  STATS = 10
GO
DECLARE @n VARCHAR(55)
SET @n = 'd:\backup\sql\ProcessingServer_'+ CONVERT(varchar(15),CONVERT(date, GETDATE())) +'_'+ replace(CONVERT(varchar,GETDATE(),8),':','') +'.bak'
BACKUP DATABASE [ProcessingServer] TO DISK = @n WITH NOFORMAT, NOINIT,  NAME = N'ProcessingServer', NOSKIP, REWIND, NOUNLOAD,  STATS = 10
GO
DECLARE @n VARCHAR(55)
SET @n = 'd:\backup\sql\SAManager_'+ CONVERT(varchar(15),CONVERT(date, GETDATE())) +'_'+ replace(CONVERT(varchar,GETDATE(),8),':','') +'.bak'
BACKUP DATABASE [SAManager] TO DISK = @n WITH NOFORMAT, NOINIT,  NAME = N'SAManager', NOSKIP, REWIND, NOUNLOAD,  STATS = 10
GO
DECLARE @n VARCHAR(55)
SET @n = 'd:\backup\sql\ScaleManager_'+ CONVERT(varchar(15),CONVERT(date, GETDATE())) +'_'+ replace(CONVERT(varchar,GETDATE(),8),':','') +'.bak'
BACKUP DATABASE [ScaleManager] TO DISK = @n WITH NOFORMAT, NOINIT,  NAME = N'ScaleManager', NOSKIP, REWIND, NOUNLOAD,  STATS = 10
GO
DECLARE @n VARCHAR(55)
SET @n = 'd:\backup\sql\TranzitDB_'+ CONVERT(varchar(15),CONVERT(date, GETDATE())) +'_'+ replace(CONVERT(varchar,GETDATE(),8),':','') +'.bak'
BACKUP DATABASE [TranzitDB] TO DISK = @n WITH NOFORMAT, NOINIT,  NAME = N'TranzitDB', NOSKIP, REWIND, NOUNLOAD,  STATS = 10
GO
DECLARE @n VARCHAR(55)
SET @n = 'd:\backup\sql\TSServer_'+ CONVERT(varchar(15),CONVERT(date, GETDATE())) +'_'+ replace(CONVERT(varchar,GETDATE(),8),':','') +'.bak'
BACKUP DATABASE [TSServer] TO DISK = @n WITH NOFORMAT, NOINIT,  NAME = N'TSServer', NOSKIP, REWIND, NOUNLOAD,  STATS = 10
GO

