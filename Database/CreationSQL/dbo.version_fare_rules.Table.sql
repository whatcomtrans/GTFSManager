USE [GTFSManager]
GO
/****** Object:  Table [dbo].[version_fare_rules]    Script Date: 06/04/2013 14:39:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[version_fare_rules](
	[versionID] [int] NOT NULL,
	[fare_id] [int] NOT NULL,
	[route_id] [int] NULL,
	[origin_id] [int] NULL,
	[destination_id] [int] NULL,
	[contains_id] [int] NULL
) ON [PRIMARY]
GO
