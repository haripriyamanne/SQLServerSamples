 CREATE TABLE Computer (
      CompID int,
      computerDes varchar(100),
      Price int
  );

  INSERT INTO computer
    VALUES (1, 'Pentium 4,1GB RAM', 25000)
  INSERT INTO computer
    VALUES (2, 'Dual Core,2GB RAM', 35000)

CREATE TABLE Addon (
      ID INT,
      Description VARCHAR(100),
      Price INT
   );

    INSERT INTO Addon
      VALUES (1, 'Speakers', 5000)
   INSERT INTO Addon
      VALUES (2, 'printer', 15000)

SELECT
    computer.computerDes,
    Addon.description,
    computer.Price + Addon.price AS totalprice
  FROM Computer
    CROSS JOIN Addon