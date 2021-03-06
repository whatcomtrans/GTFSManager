USE [GTFSManager]
GO
/****** Object:  Table [dbo].[buildstatus]    Script Date: 06/04/2013 14:39:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[buildstatus](
	[buildStatusID] [bigint] IDENTITY(1,1) NOT NULL,
	[buildStatus] [int] NOT NULL,
	[buildStatusText] [varchar](1000) NULL,
	[buildStatusDandT] [datetime] NOT NULL,
	[buildStep] [int] NOT NULL,
 CONSTRAINT [PK_versionStatus] PRIMARY KEY CLUSTERED 
(
	[buildStatusID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[buildstatus] ADD  CONSTRAINT [DF_versionStatus_versionStatusDandT]  DEFAULT (getdate()) FOR [buildStatusDandT]
GO
