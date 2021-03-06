USE [GTFSManager]
GO
/****** Object:  Table [dbo].[versions]    Script Date: 06/04/2013 14:39:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[versions](
	[versionID] [int] IDENTITY(1,1) NOT NULL,
	[versionCreated] [datetime] NOT NULL,
	[versionStart] [date] NULL,
	[versionEnd] [date] NULL,
 CONSTRAINT [PK_versions] PRIMARY KEY CLUSTERED 
(
	[versionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[versions] ADD  CONSTRAINT [DF_versions_versionCreated]  DEFAULT (getdate()) FOR [versionCreated]
GO
