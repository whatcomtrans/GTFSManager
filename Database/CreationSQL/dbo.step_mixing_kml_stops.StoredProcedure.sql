USE [GTFSManager]
GO
/****** Object:  StoredProcedure [dbo].[step_mixing_kml_stops]    Script Date: 06/04/2013 14:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		R. Josh Nylander
-- Create date: 12/14/2012
-- Description:	Mixin:  To replace shapes and stop points with those from the KML
-- =============================================
CREATE PROCEDURE [dbo].[step_mixing_kml_stops] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

  	-- Update stop points
	UPDATE [GTFSManager].[dbo].[mixing_stops]
		SET [stop_lat] = kstops.stop_lat
			,[stop_lon] = kstops.stop_lon
		FROM kml_stops AS kstops
			JOIN mixing_stops AS stops
			ON kstops.stop_id = stops.stop_id;

END
GO
