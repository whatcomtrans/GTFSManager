USE [GTFSManager]
GO
/****** Object:  View [dbo].[export_feed_info]    Script Date: 06/04/2013 14:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[export_feed_info]
AS
SELECT     *
FROM         dbo.mixing_feed_info
GO
