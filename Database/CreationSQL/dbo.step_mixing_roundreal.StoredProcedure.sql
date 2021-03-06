USE [GTFSManager]
GO
/****** Object:  StoredProcedure [dbo].[step_mixing_roundreal]    Script Date: 06/04/2013 14:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		R. Josh Nylander
-- Create date: 11/13/2012
-- Description:	Round off real numbers, especially location and distance values.
-- =============================================
CREATE PROCEDURE [dbo].[step_mixing_roundreal] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Round shape distances and locations
	UPDATE dbo.mixing_shapes SET shape_dist_traveled = ROUND(shape_dist_traveled,5)
	UPDATE dbo.mixing_shapes SET shape_pt_lat = ROUND(shape_pt_lat,4)
	UPDATE dbo.mixing_shapes SET shape_pt_lon = ROUND(shape_pt_lon,4)
END
GO
