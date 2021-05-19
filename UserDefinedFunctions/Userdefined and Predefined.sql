CREATE DATABASE schooldb

CREATE TABLE student
(
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    gender VARCHAR(50) NOT NULL,
    DOB datetime NOT NULL,
    total_score INT NOT NULL,
 )
 
INSERT INTO student
VALUES (1, 'Jolly', 'Female', '12-JUN-1989', 500), 
(2, 'Jon', 'Male', '02-FEB-1974', 545), 
(3, 'Sara', 'Female', '07-MAR-1988', 600), 
(4, 'Laura', 'Female', '22-DEC-1981', 400), 
(5, 'Alan', 'Male', '29-JUL-1993', 500), 
(6, 'Kate', 'Female', '03-JAN-1985', 500), 
(7, 'Joseph', 'Male', '09-APR-1982', 643), 
(8, 'Mice', 'Male', '16-AUG-1974', 543), 
(9, 'Wise', 'Male', '11-NOV-1987', 499), 
(10, 'Elis', 'Female', '28-OCT-1990', 400);

SELECT * FROM  student;

USE schooldb
 
SELECT name, DATENAME(YEAR, DOB) AS BIRTH_YEAR
FROM student

--Using Builtin Function
SELECT
 name,
  DATENAME(DW, DOB)+ ', '+
  DATENAME(DAY, DOB)+ ' '+
  DATENAME(MONTH, DOB) +', '+
  DATENAME(YEAR, DOB) AS DOB
FROM student

 --User Defined Fucntions
USE schooldb
GO
 
CREATE FUNCTION getFormattedDate
 (
 @DateValue AS DATETIME
 )
RETURNS VARCHAR(MAX)
AS
BEGIN
	RETURN
	  DATENAME(DW, @DateValue)+ ', '+
	  DATENAME(DAY, @DateValue)+ ' '+
	  DATENAME(MONTH, @DateValue) +', '+
	  DATENAME(YEAR, @DateValue)
 
END

--To show output by using user defined function
SELECT
 name,
 [dbo].[getFormattedDate](DOB)
FROM student

 


 