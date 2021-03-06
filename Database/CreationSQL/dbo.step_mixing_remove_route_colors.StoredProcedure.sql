USE [GTFSManager]
GO
/****** Object:  StoredProcedure [dbo].[step_mixing_remove_route_colors]    Script Date: 06/04/2013 14:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		R. Josh Nylander
-- Create date: 2/21/2013
-- Description:	Google asked that we remove route colors as they are not used in our guide or website.
-- =============================================
CREATE PROCEDURE [dbo].[step_mixing_remove_route_colors] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- As these colors are not used in our system (guides, web site) Google asked that we remove them.
	UPDATE dbo.mixing_routes SET route_color = '';
	UPDATE dbo.mixing_routes SET route_text_color = '';
END
GO
