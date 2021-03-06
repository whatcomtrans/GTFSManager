USE [GTFSManager]
GO
/****** Object:  StoredProcedure [dbo].[step_mixing_agencyandfeed]    Script Date: 06/04/2013 14:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		R. Josh Nylander
-- Create date: 11/4/2012
-- Description:	Mixing Step - Agency and Feed
-- =============================================
CREATE PROCEDURE [dbo].[step_mixing_agencyandfeed] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- Mixing: Agency and Feed
	UPDATE [GTFSManager].[dbo].[mixing_agency]
	   SET [agency_url] = 'http://www.ridewta.com/'
		  ,[agency_phone] = '1-866-989-4287'
		  ,[agency_fare_url] = 'http://www.ridewta.com/fares_and_passes'

	INSERT INTO [GTFSManager].[dbo].[mixing_feed_info]
			   ([feed_publisher_name]
			   ,[feed_publisher_url]
			   ,[feed_lang]
			   )--,[feed_start_date]
			   --,[feed_end_date]
			   --,[feed_version])
		 VALUES
			   ('Whatcom Transportation Authority'
			   ,'https://github.com/whatcomtrans/publicwtadata/raw/master/GTFS/wta_gtfs_latest.zip'
			   ,'en'
			   )--,<feed_start_date, char(8),>
			   --,<feed_end_date, char(8),>
			   --,<feed_version, varchar(50),>)

END
GO
