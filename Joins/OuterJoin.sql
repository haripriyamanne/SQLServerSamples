-- LEFT OUTER JOIN
SELECT
        e.EmpId,
        e.EmpFirstName,
        e.DepartID,
        s.EmpSalary
    FROM EmployeeDetails e
    LEFT OUTER JOIN EmpSalary s
        ON e.EmpId = s.EmpID

--RIGHT OUTER JOIN
  SELECT
        e.EmpId,
        e.EmpFirstName,
        e.DepartID,
        s.EmpSalary
    FROM EmployeeDetails e
    RIGHT OUTER JOIN EmpSalary s
        ON e.EmpId = s.EmpID
   
--FULL OUTER JOIN
    SELECT
      e.EmpId,
      e.EmpFirstName,
      e.DepartID,
      s.EmpSalary
    FROM EmployeeDetails e
    FULL OUTER JOIN EmpSalary s
      ON e.EmpId = s.EmpID