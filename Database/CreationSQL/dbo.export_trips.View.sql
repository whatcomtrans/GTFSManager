USE [GTFSManager]
GO
/****** Object:  View [dbo].[export_trips]    Script Date: 06/04/2013 14:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[export_trips]
AS
SELECT     *
FROM         dbo.mixing_trips
GO
