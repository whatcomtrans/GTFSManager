USE [GTFSManager]
GO
/****** Object:  StoredProcedure [dbo].[step_mixing_fix_holidays]    Script Date: 06/04/2013 14:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		R. Josh Nylander
-- Create date: 1/11/2013
-- Description:	From FX the holidays have exception_type = 1
--   and these need to be changed to 2 except for the 401 service.
-- =============================================
CREATE PROCEDURE [dbo].[step_mixing_fix_holidays] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Trapeze exports these as exception_type=1 which is to ADD SERVICE.  We need these an exception_type=2 to remove holiday service.
	UPDATE dbo.mixing_calendar_dates SET exception_type = 2 WHERE service_id < 10
END
GO
