CREATE PROCEDURE [Log].[spErrorLog]
AS
BEGIN
	DECLARE @ErrorDate DATETIME
		   ,@ProcedureName NVARCHAR(50)
		   ,@ErrorMessage VARCHAR(250)
		   ,@ErrorLine INT
		   ,@ErrorNumber INT
		   ,@ErrorSeverity INT
		   ,@ErrorState INT
		   ,@UserName NVARCHAR(25)
		   ,@HostName NVARCHAR(25)
	SET @ErrorDate = GETDATE()
	SET @ProcedureName = ERROR_PROCEDURE()
	SET @ErrorMessage = ERROR_MESSAGE()
	SET @ErrorLine = ERROR_LINE()
	SET @ErrorNumber = ERROR_NUMBER()
	SET @ErrorSeverity = error_severity()
	SET @ErrorState = ERROR_STATE()
	SET @UserName = SUSER_SNAME()
	SET @HostName = HOST_NAME()
	INSERT INTO [Log].[ErrorLogs] (ErrorDate, ProcedureName, ErrorMessage, ErrorLine, ErrorNumber, ErrorSeverity, ErrorState, UserName, HostName)
		VALUES (@ErrorDate, @ProcedureName, @ErrorMessage, @ErrorLine, @ErrorNumber, @ErrorSeverity, @ErrorState, @UserName, @HostName)
END
