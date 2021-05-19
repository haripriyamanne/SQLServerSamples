CREATE TABLE persons (
    id INT NOT NULL PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    dateofbirth DATE,
    phone VARCHAR(15) NOT NULL UNIQUE,
    country VARCHAR(30) NOT NULL DEFAULT 'India'
);

SELECT * FROM persons;

DROP TABLE persons

INSERT INTO persons (id,name, dateofbirth, phone,country)
VALUES (123,'hari', '1990-07-15', '9676235899','India');

INSERT INTO persons (id,name, dateofbirth, phone,country)
VALUES (126,'priya', '1995-03-22', '8541236797','India');

INSERT INTO persons (id,name, dateofbirth, phone,country)
VALUES (124,'manne', '1992-01-25', '67890123451','India');

INSERT INTO persons (id,name, dateofbirth, phone,country)
VALUES (129,'latha', '1992-03-22', '9948073113','India');

SELECT id,name, dateofbirth
FROM persons;

