USE [GTFSManager]
GO
/****** Object:  Table [dbo].[version_calendar]    Script Date: 06/04/2013 14:39:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[version_calendar](
	[versionID] [int] NOT NULL,
	[service_id] [int] NOT NULL,
	[monday] [tinyint] NOT NULL,
	[tuesday] [tinyint] NOT NULL,
	[wednesday] [tinyint] NOT NULL,
	[thursday] [tinyint] NOT NULL,
	[friday] [tinyint] NOT NULL,
	[saturday] [tinyint] NOT NULL,
	[sunday] [tinyint] NOT NULL,
	[start_date] [char](8) NOT NULL,
	[end_date] [char](8) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
