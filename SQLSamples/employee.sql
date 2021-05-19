CREATE TABLE employee(
   id   INT NOT NULL PRIMARY KEY,
   name VARCHAR (20) NOT NULL,
   age  INT NOT NULL,
   address char(50),
   salary DECIMAL (18, 2),
   deptid int
);

SELECT * FROM employee;

-- ALTER TABLE employee ADD address varchar(max);

INSERT INTO employee (id, name, age, address,salary,deptid)
VALUES (123,'hari', 23,'Bhimavaram',10000.00,01);

INSERT INTO employee (id, name, age, address,salary,deptid)
VALUES (124,'sam', 25,'Hyderabad',20000.00,02);

INSERT INTO employee (id, name, age, address,salary,deptid)
VALUES (125,'ram', 29,'vijayawada',50000.00,03);

INSERT INTO employee (id, name, age, address,salary,deptid)
VALUES (126,'sitha', 21,'mallavram',40000.00,04);

INSERT INTO employee (id, name, age, address,salary,deptid)
VALUES (127,'janu', 25,'kerala',30000.00,01);

INSERT INTO employee (id, name, age, address,salary,deptid)
VALUES (128,'ram', 30,'kakinada',60000.00,02);

SELECT * FROM employee
WHERE salary > 10000;

SELECT id, name, age, salary
FROM employee
WHERE salary > 30000;

SELECT * FROM employee
WHERE id = 125;

SELECT * FROM employee
WHERE salary > 20000 AND deptid = 02;

SELECT * FROM employee
WHERE salary > 30000 OR id = 123;

CREATE TABLE departments (
   deptid INT NOT NULL PRIMARY KEY,
   departmentname VARCHAR(MAX), 
);

DROP TABLE  departments;

DROP TABLE  employee

ALTER TABLE employee
ADD FOREIGN KEY (deptid) REFERENCES departments(deptid);

SELECT * FROM employee
WHERE salary > 5000 AND (id = 124 OR id = 128);

INSERT INTO  departments(deptid,departmentname)
VALUES (01,'Manager');


INSERT INTO  departments(deptid,departmentname)
VALUES (02,'Trainer');

INSERT INTO  departments(deptid,departmentname)
VALUES (03,'Student');


INSERT INTO  departments(deptid,departmentname)
VALUES (04,'Cleaner');

SELECT * FROM employee
WHERE deptid IN (1, 3);

SELECT * FROM employee
WHERE salary BETWEEN 20000 AND 30000;

SELECT * FROM employee
WHERE name BETWEEN 'a' AND 'z';

SELECT * FROM employee
ORDER BY name ASC;

SELECT * FROM employee
ORDER BY salary DESC;

SELECT TOP 3 * FROM employee
ORDER BY salary DESC;

SELECT TOP 30 PERCENT * FROM employee
ORDER BY salary DESC;

--SELECT * FROM employee
--ORDER BY salary DESC LIMIT 2,3;

SELECT DISTINCT name FROM employee;

UPDATE employee SET name = 'tinu'
WHERE id = 127;

UPDATE employee
SET salary = 12000, deptid = 2
WHERE id = 121;

