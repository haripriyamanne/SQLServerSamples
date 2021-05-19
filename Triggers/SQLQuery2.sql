CREATE TABLE Locations (LocationID int, LocName varchar(100))
 
INSERT INTO Locations VALUES(1,'Gujrat');
INSERT INTO Locations VALUES(2,'Kerala');
INSERT INTO Locations VALUES(3,'Goa');


CREATE TABLE LocationHist (LocationID int, ModifiedDate DATETIME)


CREATE TRIGGER TR_UPD_Locations ON Locations
FOR UPDATE 
NOT FOR REPLICATION 
AS

BEGIN
  INSERT INTO LocationHist
  SELECT LocationID
    ,getdate()
  FROM inserted
END


CREATE TRIGGER TR_DEL_Locations ON Locations
INSTEAD OF DELETE
AS
BEGIN
  Select 'Sample Instead of trigger' as [Message]
END

SELECT * FROM Locations
DELETE FROM Locations where LocationID=1;

DROP TRIGGER TRL_UPD_Locations

CREATE TRIGGER TR_ALTERTABLE ON DATABASE
FOR ALTER_TABLE
AS
BEGIN
 
INSERT INTO TableSchemaChanges
SELECT EVENTDATA(),GETDATE()
 
END