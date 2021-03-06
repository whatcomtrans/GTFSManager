USE [GTFSManager]
GO
/****** Object:  StoredProcedure [dbo].[step_mixing_remove_route_long_name]    Script Date: 06/04/2013 14:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		R. Josh Nylander
-- Create date: 2/21/2013
-- Description:	Remove route_long_name from routes.txt as these are not used outside of FX
-- =============================================
CREATE PROCEDURE [dbo].[step_mixing_remove_route_long_name] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- route_long_name is not used outside of FX and should not be published.
	UPDATE dbo.mixing_routes SET route_long_name = ''
END
GO
