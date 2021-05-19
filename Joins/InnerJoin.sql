 SELECT
        EmployeeDetails.EmpId,
        EmployeeDetails.EmpFirstName,
        EmpSalary.EmpSalary
    FROM EmployeeDetails
    JOIN EmpSalary
        ON EmployeeDetails.EmpId = EmpSalary.EmpID

SELECT 
EmployeeDetails.EmpId,
EmployeeDetails.EmpFirstName,
EmpSalary.EmpSalary FROM EmployeeDetails
WHERE EmpSalary.EmpSalary < 6000;