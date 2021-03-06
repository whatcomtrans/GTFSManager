USE [GTFSManager]
GO
/****** Object:  Table [dbo].[version_transfers]    Script Date: 06/04/2013 14:39:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[version_transfers](
	[versionID] [int] NOT NULL,
	[from_stop_id] [int] NOT NULL,
	[to_stop_id] [int] NOT NULL,
	[transfer_type] [tinyint] NOT NULL,
	[min_transfer_time] [int] NULL
) ON [PRIMARY]
GO
