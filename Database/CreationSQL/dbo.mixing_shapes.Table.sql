USE [GTFSManager]
GO
/****** Object:  Table [dbo].[mixing_shapes]    Script Date: 06/04/2013 14:39:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mixing_shapes](
	[shape_id] [int] NOT NULL,
	[shape_pt_lat] [real] NOT NULL,
	[shape_pt_lon] [real] NOT NULL,
	[shape_pt_sequence] [int] NOT NULL,
	[shape_dist_traveled] [real] NULL
) ON [PRIMARY]
GO
