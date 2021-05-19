SELECT
  *
FROM EmployeeDetails

ALTER TABLE EmployeeDetails
ADD ManagerID int

UPDATE EmployeeDetails
SET ManagerID = 1002
WHERE empid = 1001

UPDATE EmployeeDetails
SET ManagerID = 1002
WHERE empid = 1005

UPDATE EmployeeDetails
SET ManagerID = 1006
WHERE empid = 1003

UPDATE EmployeeDetails
SET ManagerID = 1004
WHERE empid = 1007

UPDATE EmployeeDetails
SET ManagerID = 1004
WHERE empid = 1008


SELECT a.EmpId, a.EmpFirstName AS ManagerName,
    b.EmpId AS ManagerID,b.EmpFirstName AS EmployeeName
    FROM EmployeeDetails a , EmployeeDetails b
    WHERE a.EmpId = b.ManagerID