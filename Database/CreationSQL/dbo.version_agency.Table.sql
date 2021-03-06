USE [GTFSManager]
GO
/****** Object:  Table [dbo].[version_agency]    Script Date: 06/04/2013 14:39:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[version_agency](
	[versionID] [int] NOT NULL,
	[agency_id] [int] NULL,
	[agency_name] [varchar](50) NOT NULL,
	[agency_url] [varchar](100) NOT NULL,
	[agency_timezone] [varchar](50) NOT NULL,
	[agency_lang] [char](2) NULL,
	[agency_phone] [varchar](15) NULL,
	[agency_fare_url] [varchar](100) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
