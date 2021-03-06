USE [GTFSManager]
GO
/****** Object:  Table [dbo].[version_feed_info]    Script Date: 06/04/2013 14:39:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[version_feed_info](
	[versionID] [int] NOT NULL,
	[feed_publisher_name] [varchar](50) NOT NULL,
	[feed_publisher_url] [varchar](100) NOT NULL,
	[feed_lang] [char](2) NOT NULL,
	[feed_start_date] [char](8) NULL,
	[feed_end_date] [char](8) NULL,
	[feed_version] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
