 CREATE TABLE EmployeeDetails1 (
      EmpId int PRIMARY KEY,
      EmpFirstName VARCHAR(50),
      EmpLastName VARCHAR(50),
      Department VARCHAR(50),
      DepartID INT
    )
 INSERT INTO EmployeeDetails1
      VALUES (1001, 'Bhavana', 'Sharma', 'IT', 2)
    INSERT INTO EmployeeDetails1
      VALUES (1002, 'Varun', 'Sharma', 'IT', 2)
    INSERT INTO EmployeeDetails1
      VALUES (1003, 'Jaspreet', 'Kaur', 'Accounts', 3)
    INSERT INTO EmployeeDetails1
      VALUES (1004, 'Shruti', 'Kalia', 'HR', 1)
    INSERT INTO EmployeeDetails1
      VALUES (1005, 'Shaili', 'Verghese', 'IT', 2)
    INSERT INTO EmployeeDetails1
      VALUES (1006, 'Rakesh', 'Dubey', 'Accounts', 3)

	SELECT * FROM EmployeeDetails1
          
CREATE TABLE EmpSalary1 (
      EmpID INT,
      EmpFullName VARCHAR(80),
      EmpSalary INT,
      EmpWorkingYears INT,
      DepartID INT
    )

INSERT INTO EmpSalary1
        VALUES (1001, 'Bhavana Sharma', 35000, 3,2)
    INSERT INTO EmpSalary1
      VALUES (1002, 'Varun Sharma', 25000, 2,2)
    INSERT INTO EmpSalary1
      VALUES (1003, 'Jaspreet Kaur', 20000, 2,3)
    INSERT INTO EmpSalary1
      VALUES (1004, 'Shruti Kalia', 18000, 1,1)
    INSERT INTO EmpSalary1
      VALUES (1005, 'Shaili Verghese', 25000, 2,2)
    INSERT INTO EmpSalary1 
      VALUES (1006,'Ramesh Kumar', 6000, 1,3)

SELECT  * FROM EmpSalary1

CREATE FUNCTION fn_Salaryinc (@DepartmentID int)
    RETURNS TABLE
    AS
    RETURN
    (
      SELECT 
        EmpID, EmpFullName,
        EmpSalary+5000 AS Salaryinc
      FROM
        Empsalary1
      WHERE
       DepartID = @DepartmentID 
  
    )
    GO


SELECT EmpID, EmpFullName, Salaryinc FROM fn_Salaryinc(2)

--USING CROSS APPLY
 SELECT
      e.EmpFirstName,
      e.EmpLastName,
      f.Salaryinc
    FROM
      EmployeeDetails1 AS e
    CROSS APPLY
      fn_Salaryinc  (e.DepartID) AS f
GO

