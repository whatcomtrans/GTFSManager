USE [GTFSManager]
GO
/****** Object:  View [dbo].[export_fare_rules]    Script Date: 06/04/2013 14:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[export_fare_rules]
AS
SELECT     *
FROM         dbo.mixing_fare_rules
GO
