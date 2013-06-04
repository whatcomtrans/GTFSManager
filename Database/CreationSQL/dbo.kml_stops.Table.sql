USE [GTFSManager]
GO
/****** Object:  Table [dbo].[kml_stops]    Script Date: 06/04/2013 14:39:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[kml_stops](
	[stop_id] [int] NOT NULL,
	[stop_lon] [real] NOT NULL,
	[stop_lat] [real] NOT NULL,
	[stop_name] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
