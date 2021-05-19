CREATE TABLE employee(
   id   INT NOT NULL PRIMARY KEY,
   name VARCHAR (20) NOT NULL,
   age  INT NOT NULL,
   address char(50),
   salary DECIMAL (18, 2),
   deptid int
);

INSERT INTO employee (id, name, age, address,salary,deptid)
VALUES (123,'hari', 23,'Bhimavaram',10000.00,01);

INSERT INTO employee (id, name, age, address,salary,deptid)
VALUES (124,'sam', 25,'Hyderabad',20000.00,02);

INSERT INTO employee (id, name, age, address,salary,deptid)
VALUES (125,'ram', 29,'vijayawada',50000.00,03);

UPDATE employee
SET salary = 12000, deptid = 2
WHERE id = 121;

DELETE FROM employee WHERE id > 121;