USE [GTFSManager]
GO
/****** Object:  StoredProcedure [dbo].[build]    Script Date: 06/04/2013 14:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[build] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Declare variables
    DECLARE @buildStepID int;
    DECLARE @buildStepName varchar(50);
    DECLARE @buildStepSQL varchar(MAX);
    DECLARE @buildStep int;
    DECLARE @lastStep int;
    DECLARE @lastStepStatus int;
    DECLARE @buildStatus int;
    DECLARE @buildError varchar(MAX);
    
    -- Determine if last step succeeded
    SELECT @lastStepStatus = (SELECT TOP(1) buildStatus FROM lastbuildstatus)
    
    -- If last step succeeded, we can proceed.
    IF @lastStepStatus = 1
    BEGIN
        
        -- Determine last step ran
		SELECT @lastStep = (SELECT TOP(1) buildStep FROM lastbuildstatus)
        
        -- Retrieve the list of active steps greator then the last ran step    
		DECLARE buildsteps_cursor CURSOR
		   FOR
		   SELECT buildStepID, buildStepName, buildStepSQL, buildStep FROM buildsteps
			WHERE buildStepActive = 1 AND buildStep > @lastStep
			ORDER BY buildStep ASC;
		OPEN buildsteps_cursor;
		
		FETCH NEXT FROM buildsteps_cursor INTO @buildStepID, @buildStepName, @buildStepSQL, @buildStep;

		WHILE (@@FETCH_STATUS <> -1)
		BEGIN
			IF @lastStepStatus = 1  -- This makes us skip the rest of the steps 
			BEGIN
			
				SELECT @buildStatus = 1;
				SELECT @buildError = '';
				
				BEGIN TRY
					EXECUTE (@buildStepSQL);
				END TRY
				BEGIN CATCH
					SELECT @buildStatus = 0
					SELECT @buildError = ERROR_MESSAGE()
				END CATCH;
				
				PRINT @buildStatus;
				PRINT @buildError
				
				INSERT INTO buildstatus 
					(buildStatus, buildStatusText, buildStep) 
					VALUES (@buildStatus, 'Build Step: ' + @buildStepName + ' ' + @buildError, @buildStep);
				
				SELECT @lastStepStatus = @buildStatus
			END -- IF
			
			FETCH NEXT FROM buildsteps_cursor INTO @buildStepID, @buildStepName, @buildStepSQL, @buildStep;
		END  -- WHILE
		CLOSE buildsteps_cursor;
		DEALLOCATE buildsteps_cursor;
	END  -- IF
END
GO
