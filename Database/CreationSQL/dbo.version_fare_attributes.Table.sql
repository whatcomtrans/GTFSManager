USE [GTFSManager]
GO
/****** Object:  Table [dbo].[version_fare_attributes]    Script Date: 06/04/2013 14:39:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[version_fare_attributes](
	[versionID] [int] NOT NULL,
	[fare_id] [int] NOT NULL,
	[price] [real] NOT NULL,
	[currency_type] [varchar](10) NOT NULL,
	[payment_method] [tinyint] NOT NULL,
	[transfers] [tinyint] NOT NULL,
	[transfer_duration] [tinyint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
