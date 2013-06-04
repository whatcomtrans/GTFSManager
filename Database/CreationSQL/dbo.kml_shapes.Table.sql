USE [GTFSManager]
GO
/****** Object:  Table [dbo].[kml_shapes]    Script Date: 06/04/2013 14:39:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kml_shapes](
	[shape_id] [int] NOT NULL,
	[shape_pt_lon] [real] NOT NULL,
	[shape_pt_lat] [real] NOT NULL,
	[shape_pt_sequence] [int] NOT NULL
) ON [PRIMARY]
GO
