CREATE TABLE StudentDetails(
sid INT PRIMARY KEY,
name VARCHAR(10),
Address VARCHAR(max)
);

DROP TABLE StudentDetails;

INSERT INTO StudentDetails 
VALUES(1,'Jaya','Kolkata');

INSERT INTO StudentDetails 
VALUES(2,'kim','Mumbai');

INSERT INTO StudentDetails 
VALUES(3,'janu','Chennai');

SELECT * FROM StudentDetails;

CREATE TABLE StudentMarks(
id INT PRIMARY KEY,
name VARCHAR(10),
marks INT,
age INT
);

INSERT INTO StudentMarks
VALUES(1,'Jaya',86,23);

INSERT INTO StudentMarks
VALUES(2,'kim',46,29);

INSERT INTO StudentMarks
VALUES(3,'janu',74,27);

CREATE VIEW vwDetailsView AS
SELECT name, address
FROM StudentDetails
WHERE sid < 5;

INSERT INTO vwDetailsView(name, address)
VALUES('wini','Gurgaon');

SELECT * FROM vwDetailsView;

CREATE VIEW vwstudentnames AS
SELECT id, name
FROM StudentDetails
ORDER BY name;

CREATE VIEW vwMarksView AS
SELECT StudentDetails.name, StudentDetails.address, StudentMarks.marks
FROM StudentDetails, StudentMarks
WHERE StudentDetails.NAME = StudentMarks.NAME;

SELECT * FROM vwMarksView;

DROP VIEW vwMarksView;

CREATE VIEW vwAllDetails AS
SELECT StudentDetails.name, StudentDetails.address, StudentMarks.marks, StudentMarks.age
FROM StudentDetails, StudentMarks
WHERE StudentDetails.name = StudentMarks.name;

SELECT * FROM vwAllDetails;
