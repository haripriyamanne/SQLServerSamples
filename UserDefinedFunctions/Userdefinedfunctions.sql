--Scalar function
 CREATE FUNCTION dbo.FirstLetter_Upper (@Name varchar(100))
        RETURNS varchar(100)
    AS
    BEGIN
    RETURN
	    (
    	    UPPER(LEFT(@Name,1))+LOWER(SUBSTRING(@Name,2,LEN(@Name)))
	    )
    END

--Using Function Name

DECLARE @Name VARCHAR(100)
SET @Name = dbo.FirstLetter_Upper('bhAvana')
PRINT @Name 

--Using Function in Select Statement
SELECT dbo.FirstLetter_Upper(EmpFirstName) AS FirstName
FROM EmployeeDetails
WHERE EmpID = 1001

--Creating a table valued user define function
CREATE FUNCTION dbo.Department_Wise (@department varchar(100))
RETURNS TABLE
AS
RETURN
	(
	SELECT * 
	FROM EmployeeDetails
	WHERE Department = @department
	)
GO

--Executing a table valued function
SELECT * FROM dbo.Department_Wise('IT')

--using cross join
    SELECT *
    FROM EmployeeDetails AS a
    CROSS APPLY dbo.Department_Wise(a.department)

SELECT * FROM EmployeeDetails

