USE [GTFSManager]
GO
/****** Object:  Table [dbo].[version_frequencies]    Script Date: 06/04/2013 14:39:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[version_frequencies](
	[versionID] [int] NOT NULL,
	[trip_id] [int] NOT NULL,
	[start_time] [varchar](8) NOT NULL,
	[end_time] [varchar](8) NOT NULL,
	[headway_secs] [varchar](8) NULL,
	[exact_times] [tinyint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
