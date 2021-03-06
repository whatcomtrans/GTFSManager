USE [GTFSManager]
GO
/****** Object:  StoredProcedure [dbo].[step_prepmixing]    Script Date: 06/04/2013 14:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		R. Josh Nylander
-- Create date: 11/4/2012
-- Description:	Prepares the mixing process by clearing the mixing tables and copying data from import.
-- =============================================
CREATE PROCEDURE [dbo].[step_prepmixing] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Mixing Prep

	-- START Delete from mixing
	DELETE FROM mixing_agency
	DELETE FROM mixing_calendar
	DELETE FROM mixing_calendar_dates
	DELETE FROM mixing_fare_attributes
	DELETE FROM mixing_fare_rules
	DELETE FROM mixing_feed_info
	DELETE FROM mixing_frequencies
	DELETE FROM mixing_routes
	DELETE FROM mixing_shapes
	DELETE FROM mixing_stop_times
	DELETE FROM mixing_stops
	DELETE FROM mixing_transfers
	DELETE FROM mixing_trips
	-- END

	-- START Insert import to mixing
	INSERT INTO mixing_agency
		SELECT * FROM import_agency
	INSERT INTO mixing_calendar
		SELECT * FROM import_calendar
	INSERT INTO mixing_calendar_dates
		SELECT * FROM import_calendar_dates
	INSERT INTO mixing_fare_attributes
		SELECT * FROM import_fare_attributes
	INSERT INTO mixing_fare_rules
		SELECT * FROM import_fare_rules
	INSERT INTO mixing_feed_info
		SELECT * FROM import_feed_info
	INSERT INTO mixing_frequencies
		SELECT * FROM import_frequencies
	INSERT INTO mixing_routes
		SELECT * FROM import_routes
	INSERT INTO mixing_shapes
		SELECT * FROM import_shapes
	INSERT INTO mixing_stop_times
		SELECT * FROM import_stop_times
	INSERT INTO mixing_stops
		SELECT * FROM import_stops
	INSERT INTO mixing_transfers
		SELECT * FROM import_transfers
	INSERT INTO mixing_trips
		SELECT * FROM import_trips
	--END
END
GO
