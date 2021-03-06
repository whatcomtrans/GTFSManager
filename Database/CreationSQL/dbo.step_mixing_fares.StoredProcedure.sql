USE [GTFSManager]
GO
/****** Object:  StoredProcedure [dbo].[step_mixing_fares]    Script Date: 06/04/2013 14:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		R. Josh Nylander
-- Create date: 11/4/2012
-- Description:	Mixing Step - Fares
-- =============================================
CREATE PROCEDURE [dbo].[step_mixing_fares] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- Mixing: Fares

	-- Establish Zones
	UPDATE mixing_stops SET zone_id = 1  --Default zone
	UPDATE mixing_stops SET zone_id = 2 WHERE stop_id = 308  --Skagit zone
	UPDATE mixing_stops SET zone_id = 2 WHERE stop_id = 6087 --Skagit zone
	UPDATE mixing_stops SET zone_id = 2 WHERE stop_id = 310  --Skagit zone

	-- Create Fare 1 ($1.00 within county, no transfers)
	INSERT INTO [GTFSManager].[dbo].[mixing_fare_attributes]
			   ([fare_id]
			   ,[price]
			   ,[currency_type]
			   ,[payment_method]
			   ,[transfers])
		 VALUES
			   (1
			   ,1
			   ,'USD'
			   ,0
			   ,0)

	-- Create Fare 2 ($2.00 for between county, no transfers)
	INSERT INTO [GTFSManager].[dbo].[mixing_fare_attributes]
			   ([fare_id]
			   ,[price]
			   ,[currency_type]
			   ,[payment_method]
			   ,[transfers])
		 VALUES
			   (2
			   ,2
			   ,'USD'
			   ,0
			   ,0)

	-- Associate zones with fares
	INSERT INTO [GTFSManager].[dbo].[mixing_fare_rules]
			   ([fare_id]
			   ,[origin_id]
			   ,[destination_id])
		 VALUES
			   (2
			   ,1
			   ,2)

	INSERT INTO [GTFSManager].[dbo].[mixing_fare_rules]
			   ([fare_id]
			   ,[origin_id]
			   ,[destination_id])
		 VALUES
			   (2
			   ,2
			   ,1)

INSERT INTO [GTFSManager].[dbo].[mixing_fare_rules]
			   ([fare_id]
			   ,[origin_id]
			   ,[destination_id])
		 VALUES
			   (1
			   ,1
			   ,1)
			   
INSERT INTO [GTFSManager].[dbo].[mixing_fare_rules]
			   ([fare_id]
			   ,[origin_id]
			   ,[destination_id])
		 VALUES
			   (1
			   ,2
			   ,2)

END
GO
