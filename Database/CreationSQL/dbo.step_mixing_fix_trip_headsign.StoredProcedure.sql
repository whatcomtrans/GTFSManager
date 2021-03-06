USE [GTFSManager]
GO
/****** Object:  StoredProcedure [dbo].[step_mixing_fix_trip_headsign]    Script Date: 06/04/2013 14:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		R. Josh Nylander
-- Create date: 2/21/2013
-- Description:	Google wants us to remove the route number from the headsign (which they then show as direction).
-- =============================================
CREATE PROCEDURE [dbo].[step_mixing_fix_trip_headsign] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Google wants us to remove the route number from the headsign (which they then show as direction).
	UPDATE dbo.mixing_trips SET trip_headsign = RTRIM(LTRIM(SUBSTRING([trip_headsign], CHARINDEX(' ', [trip_headsign]), 100)))
END
GO
