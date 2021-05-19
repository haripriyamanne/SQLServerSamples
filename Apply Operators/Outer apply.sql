CREATE TABLE EmployeeProject (
          EmpID INT,
          DepartmentName VARCHAR(100),
          DepartID INT,
          ProjectName VARCHAR(100),
          Projectid VARCHAR(50)
    )

INSERT INTO EmployeeProject
      VALUES (1001, 'IT', 2, 'SQL', 'P01')
INSERT INTO EmployeeProject
      VALUES (1002, 'IT', 2, 'Crystal Reports', 'P02')
INSERT INTO EmployeeProject
      VALUES (1003, 'Accounts', 3, 'Finance', 'A01')
INSERT INTO EmployeeProject
      VALUES (1004, 'HR', 1,NULL,NULL)

SELECT * FROM EmployeeProject


 CREATE FUNCTION fn_Project(@DepartID INT)
    RETURNS TABLE
    AS
    RETURN
    (
        SELECT
            EmpID,
            DepartmentName,
            ProjectName
        FROM
            EmployeeProject
        WHERE
            DepartID = @DepartID
    )


 SELECT  * FROM fn_Project(2)


SELECT 
        e.EmpID, 
        e.EmpFirstName ,
        fn.DepartmentName, 
        fn.Projectname 
    FROM
 	    Employeedetails e 
    OUTER APPLY
  	    fn_Project (e.departID) AS fn

-- Outer Apply query with Cross Apply, it will clearly show the difference as 
--the number of rows will be lesser as per the join condition.

SELECT  
        e.EmpID, 
        e.EmpFirstName,
 	    fn.DepartmentName, 
        fn.Projectname 
    FROM
 	    Employeedetails e 
    Cross APPLY
  	    fn_Project (e.departID) AS fn