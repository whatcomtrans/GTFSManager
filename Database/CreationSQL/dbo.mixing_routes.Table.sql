USE [GTFSManager]
GO
/****** Object:  Table [dbo].[mixing_routes]    Script Date: 06/04/2013 14:39:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mixing_routes](
	[route_id] [int] NOT NULL,
	[agency_id] [int] NULL,
	[route_short_name] [varchar](10) NOT NULL,
	[route_long_name] [varchar](50) NOT NULL,
	[route_desc] [varchar](256) NULL,
	[route_type] [tinyint] NOT NULL,
	[route_url] [varchar](100) NULL,
	[route_color] [char](6) NULL,
	[route_text_color] [char](6) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
