USE [GTFSManager]
GO
/****** Object:  StoredProcedure [dbo].[step_mixing_transfers]    Script Date: 06/04/2013 14:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		R. Josh Nylander
-- Create date: 11/4/2012
-- Description:	Mixing Step - Transfers
-- =============================================
CREATE PROCEDURE [dbo].[step_mixing_transfers] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Mixing: Transfers

	-- This inserts data from the standard_transfers table which is designed
	-- to be populated from an Access database (provides easy form for Becky)
	-- found at P:\IT\GTFS\GTFS_Editor.accdb
	--
	-- Open that database and run the Update macro to connect to this database
	-- and refresh the standard_transfers table.  Then run this mixin.

	INSERT INTO mixing_transfers
		SELECT * FROM standard_transfers
	
END
GO
