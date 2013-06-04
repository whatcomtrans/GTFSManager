USE [GTFSManager]
GO
/****** Object:  Table [dbo].[import_calendar_dates]    Script Date: 06/04/2013 14:39:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[import_calendar_dates](
	[service_id] [int] NOT NULL,
	[date] [char](8) NOT NULL,
	[exception_type] [tinyint] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
