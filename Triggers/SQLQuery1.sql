CREATE TABLE enum(id INTEGER NOT NULL PRIMARY KEY, action VARCHAR(255) NOT NULL);

INSERT INTO enum VALUES (0, 'INSERTS');
INSERT INTO enum VALUES (1, 'UPDATE');
INSERT INTO enum VALUES (2, 'DELETE');

SELECT * FROM enum;

-- PRAGMA foreign_keys = ON;

-- Create a table to audit.
CREATE TABLE inventory(id INTEGER NOT NULL PRIMARY KEY,
name VARCHAR(255) NOT NULL, 
description VARCHAR(255), 
cost INTEGER NOT NULL,
quantity INTEGER NOT NULL);

-- Create a table to log the auditing history.
CREATE TABLE inventory_audit(id INTEGER NOT NULL PRIMARY KEY ,
stamp VARCHAR(255), 
action INTEGER NOT NULL, 
iid INTEGER NOT NULL, 
name VARCHAR(255) NOT NULL, 
description VARCHAR(255), 
cost INTEGER NOT NULL, quantity 
INTEGER NOT NULL, FOREIGN KEY(action) REFERENCES enum(id));

CREATE TRIGGER insert_bread_crums 
AFTER INSERT ON inventory
BEGIN
-- INSERT INTO inventory_audit (stamp, action, iid, name, description, cost, quantity) VALUES ((SELECT datetime("now")), 0, new.id, new.name, new.description, new.cost, new.quantity);
   INSERT INTO inventory_audit (stamp, action, iid, name, description, cost, quantity) VALUES ((SELECT COUNT(*) FROM inventory WHERE name=new.name), 0, new.id, new.name, new.description, new.cost, new.quantity);
END;

CREATE TRIGGER update_bread_crums AFTER UPDATE ON inventory
BEGIN
-- INSERT INTO inventory_audit (stamp, action, iid, name, description, cost, quantity) VALUES ((SELECT datetime("now")), 1, new.id, new.name, new.description, new.cost, new.quantity);
   INSERT INTO inventory_audit (stamp, action, iid, name, description, cost, quantity) VALUES ((SELECT COUNT(*) FROM inventory WHERE id=old.id), 1, old.id, new.name, new.description, new.cost, new.quantity);
END;

CREATE TRIGGER delete_bread_crums AFTER DELETE ON inventory
BEGIN
-- INSERT INTO inventory_audit (stamp, action, iid, name, description, cost, quantity) VALUES ((SELECT datetime("now")), 2, new.id, new.name, new.description, new.cost, new.quantity);
   INSERT INTO inventory_audit (stamp, action, iid, name, description, cost, quantity) VALUES ((SELECT COUNT(*) FROM inventory WHERE id=old.id), 2, old.id, old.name, old.description, old.cost, old.quantity);
END;

-- Populate sample data.
INSERT INTO inventory (name, description, cost, quantity) VALUES ("chisel", "wood chisels", 230, 100);
INSERT INTO inventory (name, description, cost, quantity) VALUES ("allen Key", "t-handle allen key", 110, 16);
INSERT INTO inventory (name, description, cost, quantity) VALUES ("ball pein hammer", "watch your thumb", 720, 24);
INSERT INTO inventory (name, description, cost, quantity) VALUES ("fibreglass hammer", "jacketed fibreglass club hammer 1.4Kg", 230, 62);
INSERT INTO inventory (name, description, cost, quantity) VALUES ("rubber mallet", "rubber mallet (0.8Kg)", 590, 88);

UPDATE inventory SET quantity=54 WHERE name="fibreglass hammer";

DELETE FROM inventory WHERE name="chisel";

-- The following shall show 2 records.
SELECT * FROM inventory_audit WHERE name="fibreglass hammer" ORDER BY stamp;

-- The following shall show 2 records.
SELECT * FROM inventory_audit WHERE name="chisel" ORDER BY stamp;

-- The following shall show 5 "INSERT" records.
SELECT ia.id, ia.stamp, ia.action, ia.iid, ia.name, ia.description, ia.cost, ia.quantity FROM inventory_audit as ia, enum AS en WHERE en.action="INSERT" AND en.id=ia.action ORDER BY stamp;
