SELECT * FROM departments

CREATE TABLE addresses (
  userid INT, -- Both a primary and foreign key
  street VARCHAR(30) NOT NULL,
  city VARCHAR(30) NOT NULL,
  state VARCHAR(30) NOT NULL,
  PRIMARY KEY (userid),
  FOREIGN KEY (userid) REFERENCES departments(deptid) ON DELETE CASCADE
);

INSERT INTO addresses (userid, street, city, state) VALUES
  (1, '1 Market Street', 'San Francisco', 'CA'),
  (2, '2 Elm Street', 'San Francisco', 'CA'),
  (3, '3 Main Street', 'Boston', 'MA');

  INSERT INTO addresses (userid, street, city, state) VALUES
  (101, '1 Market Street', 'San Francisco', 'CA')
  