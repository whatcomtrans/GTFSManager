USE [GTFSManager]
GO
/****** Object:  Table [dbo].[import_stops]    Script Date: 06/04/2013 14:39:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[import_stops](
	[stop_id] [int] NOT NULL,
	[stop_code] [varchar](10) NULL,
	[stop_name] [varchar](50) NOT NULL,
	[stop_desc] [varchar](100) NULL,
	[stop_lat] [real] NOT NULL,
	[stop_lon] [real] NOT NULL,
	[zone_id] [int] NULL,
	[stop_url] [varchar](100) NULL,
	[location_type] [tinyint] NULL,
	[parent_station] [int] NULL,
	[stop_timezone] [varchar](50) NULL,
	[wheelchair_boarding] [tinyint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
