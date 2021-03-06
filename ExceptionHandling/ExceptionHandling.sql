  
select * from EmployeeDetails


BEGIN TRY
	INSERT INTO EmployeeDetails
	VALUES
	(1002,'Thomas','Scott','Accounts',3,1003)
END TRY
BEGIN CATCH
	SELECT 'An error occurred performing this operation '+
			ERROR_MESSAGE() AS ErrorMessage
	SELECT	ERROR_LINE() AS ErrorLine,
			ERROR_NUMBER() AS ErrorNumber,
			ERROR_PROCEDURE() AS ErrorProcedure,
			ERROR_SEVERITY() AS ErrorSeverity,
			ERROR_STATE() AS ErrorState
END CATCH



SELECT * FROM EmployeeDetails


SELECT CONSTRAINT_NAME,
 TABLE_SCHEMA ,
 TABLE_NAME,
 CONSTRAINT_TYPE
 FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_NAME='EmployeeDetails'
