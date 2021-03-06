USE [GTFSManager]
GO
/****** Object:  Table [dbo].[buildsteps]    Script Date: 06/04/2013 14:39:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[buildsteps](
	[buildStepID] [int] IDENTITY(1,1) NOT NULL,
	[buildStepActive] [bit] NOT NULL,
	[buildStep] [int] NOT NULL,
	[buildStepName] [varchar](50) NULL,
	[buildStepSQL] [varchar](max) NULL,
 CONSTRAINT [PK_buildsteps] PRIMARY KEY CLUSTERED 
(
	[buildStepID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[buildsteps] ADD  CONSTRAINT [DF_buildsteps_buildStepActive]  DEFAULT ((0)) FOR [buildStepActive]
GO
ALTER TABLE [dbo].[buildsteps] ADD  CONSTRAINT [DF_buildsteps_buildStepSort]  DEFAULT ((100000)) FOR [buildStep]
GO
