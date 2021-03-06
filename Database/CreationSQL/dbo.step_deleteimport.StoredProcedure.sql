USE [GTFSManager]
GO
/****** Object:  StoredProcedure [dbo].[step_deleteimport]    Script Date: 06/04/2013 14:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[step_deleteimport] 
AS
BEGIN
	DELETE dbo.import_agency;
	DELETE dbo.import_stops;
	DELETE dbo.import_routes;
	DELETE dbo.import_trips;
	DELETE dbo.import_stop_times;
	DELETE dbo.import_calendar;
	DELETE dbo.import_calendar_dates;
	DELETE dbo.import_fare_attributes;
	DELETE dbo.import_fare_rules;
	DELETE dbo.import_shapes;
	DELETE dbo.import_frequencies;
	DELETE dbo.import_transfers;
	DELETE dbo.import_feed_info;
END
GO
