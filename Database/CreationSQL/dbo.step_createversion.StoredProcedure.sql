USE [GTFSManager]
GO
/****** Object:  StoredProcedure [dbo].[step_createversion]    Script Date: 06/04/2013 14:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		R. Josh Nylander
-- Create date: 11/4/2012
-- Description:	Create a version by adding version record to versions table and inserting from mixing
-- =============================================
CREATE PROCEDURE [dbo].[step_createversion] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
	-- Calculate version start and end from calendar
	
	-- Insert version record
	
	-- Retrieve versionID
	
	-- Perform inserts on each table using versionID
	
	-- TODO
END
GO
