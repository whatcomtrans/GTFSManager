USE [GTFSManager]
GO
/****** Object:  Table [dbo].[mixing_trips]    Script Date: 06/04/2013 14:39:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mixing_trips](
	[route_id] [int] NOT NULL,
	[service_id] [int] NOT NULL,
	[trip_id] [int] NOT NULL,
	[trip_headsign] [varchar](50) NULL,
	[trip_short_name] [varchar](50) NULL,
	[direction_id] [tinyint] NULL,
	[block_id] [int] NULL,
	[shape_id] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
