USE [master]
GO
CREATE DATABASE [certificate_db]
GO
USE [certificate_db]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[certificate](
[cert_key] [nvarchar](50) NOT NULL,
[cert_value] [int] NOT NULL,
[is_lock] [bit] NULL,
CONSTRAINT [PK_certificate] PRIMARY KEY CLUSTERED
( [cert_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[payment](
[payment_id] [int] IDENTITY(1,1) NOT NULL,
[cert_key] [nvarchar](50) NOT NULL,
[pay_sum] [int] NOT NULL,
[pay_time] [datetime] NOT NULL,
[sarea_id] [int] NOT NULL,
[cash_desk_id] [int] NOT NULL,
[sess_id] [int] NOT NULL,
[srec_num] [int] NOT NULL,
CONSTRAINT [PK_payment] PRIMARY KEY CLUSTERED
( [payment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [cert_key_index] ON [dbo].[payment]
( [cert_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[payment] WITH CHECK ADD CONSTRAINT [FK_payment_certificate] FOREIGN KEY([cert_key])
REFERENCES [dbo].[certificate] ([cert_key])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[payment] CHECK CONSTRAINT [FK_payment_certificate]
GO
USE [master]
GO
ALTER DATABASE [certificate_db] SET READ_WRITE
GO