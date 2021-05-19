CREATE PROCEDURE SelectAllEmployees
AS
SELECT * FROM EmployeeDetails
GO;

Select * from EmployeeDetails

EXEC SelectAllEmployees

--Creating a Procedure
CREATE PROC ListofEMP @Department CHAR(50)
    AS

    BEGIN
	    SELECT EmpID,EmpFirstName+' '+EmpLastName AS EmpName 
	    FROM EmployeeDetails
	    WHERE Department = @Department
    END

--Executing a Stored Procedure
 EXEC ListofEMP 'IT'

 --With Output Parameter
CREATE PROC SingleEMP 
    @EmpID INT,
	@Department CHAR(50) OUTPUT,
    @EmpName CHAR(100) OUTPUT
AS
BEGIN
IF EXISTS (SELECT * from EmployeeDetails where EmpID = @EmpID)
BEGIN
	SELECT 
	@Department = Department,
	@EmpName = EmpFirstName+' '+EmpLastName 
	FROM EmployeeDetails
	WHERE EmpID = @EmpID
	Return 0
END
ELSE
    RETURN 1    
END

--Executing Procedure

 DECLARE @Department_output char(50), @EmpName_output char(100)
    
    EXEC SingleEMP 1001,
	    @Department = @Department_output OUTPUT,
	    @EmpName = @EmpName_output OUTPUT
	    PRINT @Department_output
	    PRINT @EmpName_output
	    PRINT 'Execution complete'