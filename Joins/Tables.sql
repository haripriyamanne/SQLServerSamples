CREATE TABLE EmployeeDetails (
  EmpId int PRIMARY KEY,
  EmpFirstName varchar(50),
  EmpLastName varchar(50),
  Department varchar(50),
  DepartID int
);

ALTER TABLE EmpSalary ADD FOREIGN KEY(EmpId) references EmployeeDetails(EmpId)

 INSERT INTO EmployeeDetails
      VALUES (1001, 'Bhavana', 'Sharma', 'IT', 2)
    INSERT INTO EmployeeDetails
      VALUES (1002, 'Varun', 'Sharma', 'IT', 2)
    INSERT INTO EmployeeDetails
      VALUES (1003, 'Jaspreet', 'Kaur', 'Accounts', 3)
    INSERT INTO EmployeeDetails
      VALUES (1004, 'Shruti', 'Kalia', 'HR', 1)
    INSERT INTO EmployeeDetails
      VALUES (1005, 'Shaili', 'Verghese', 'IT', 2)
    INSERT INTO EmployeeDetails
      VALUES (1006, 'Rakesh', 'Dubey', 'Accounts', 3)

SELECT  * FROM EmployeeDetails

CREATE TABLE EmpSalary (
  EmpID int,
  EmpFullName varchar(80),
  EmpSalary int,
  EmpWorkingYears int
);

  INSERT INTO EmpSalary
        VALUES (1001, 'Bhavana Sharma', 35000, 3)
    INSERT INTO EmpSalary
      VALUES (1002, 'Varun Sharma', 25000, 2)
    INSERT INTO EmpSalary
      VALUES (1003, 'Jaspreet Kaur', 20000, 2)
    INSERT INTO EmpSalary
      VALUES (1004, 'Shruti Kalia', 18000, 1)
    INSERT INTO EmpSalary
      VALUES (1005, 'Shaili Verghese', 25000, 2)
    INSERT INTO EmpSalary (EmpFullName, EmpSalary, EmpWorkingYears)
      VALUES ('Ramesh Kumar', 6000, 1)

SELECT  * FROM EmpSalary   