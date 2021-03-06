USE [GTFSManager]
GO
/****** Object:  Table [dbo].[import_stop_times]    Script Date: 06/04/2013 14:39:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[import_stop_times](
	[trip_id] [int] NOT NULL,
	[arrival_time] [varchar](8) NOT NULL,
	[departure_time] [varchar](8) NOT NULL,
	[stop_id] [int] NOT NULL,
	[stop_sequence] [int] NOT NULL,
	[stop_headsign] [varchar](50) NULL,
	[pickup_type] [tinyint] NULL,
	[drop_off_type] [tinyint] NULL,
	[shape_dist_traveled] [real] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
