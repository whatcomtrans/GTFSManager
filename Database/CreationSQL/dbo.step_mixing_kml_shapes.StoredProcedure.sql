USE [GTFSManager]
GO
/****** Object:  StoredProcedure [dbo].[step_mixing_kml_shapes]    Script Date: 06/04/2013 14:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		R. Josh Nylander
-- Create date: 12/14/2012
-- Description:	Mixin:  To replace shapes and stop points with those from the KML
-- =============================================
CREATE PROCEDURE [dbo].[step_mixing_kml_shapes] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Replace shapes with those imported
    DELETE FROM [GTFSManager].[dbo].[mixing_shapes];
    INSERT INTO [GTFSManager].[dbo].[mixing_shapes]
           ([shape_id]
           ,[shape_pt_lat]
           ,[shape_pt_lon]
           ,[shape_pt_sequence]
           ,[shape_dist_traveled])
     SELECT [shape_id]
      ,[shape_pt_lat]
      ,[shape_pt_lon]
      ,[shape_pt_sequence]
      ,[shape_dist_traveled]
		FROM [GTFSManager].[dbo].[kml_shapes_withdist];

END
GO
