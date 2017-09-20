create table Employee(
  eid INTEGER,
  fname VARCHAR(20),
  lnam VARCHAR(30),
  zip VARCHAR(16),
  PRIMARY KEY (eid)
);

INSERT INTO Employee
    VALUES (1,"Hello", "World", 56093);
INSERT INTO Employee
    VALUES (2,"Hello", "World", 56093);


create table Telephone(
  tid INTEGER,
  phoneNumber INTEGER,
  employeeID INTEGER,
  FOREIGN KEY (employeeID) REFERENCES Employee(eid),
  PRIMARY KEY (tid)
);

INSERT INTO Telephone
    VALUES (1, 5078675309, 1);
INSERT INTO Telephone
    VALUES (2, 5078675309, 2);

create table Customer (
  cid INTEGER,
  fname VARCHAR(20),
  lname VARCHAR(30),
  street VARCHAR(60),
  city VARCHAR(60),
  zip VARCHAR(16),
  PRIMARY KEY (cid)
);

INSERT INTO Customer
    VALUES (1,"Customer", "1", "1800 Lexington AVE N", "Ardent Hills", "56093");
INSERT INTO Customer
    VALUES (2,"Customer", "2", "1800 Lexington AVE N", "Ardent Hills", "56093");



CREATE table Parts(
  pid INTEGER,
  pname VARCHAR(20),
  price VARCHAR(20),
  quantity INTEGER,
  PRIMARY KEY (pid)
);

INSERT INTO Parts
    VALUES (1, "Muffler", "50.00", 50);
INSERT INTO Parts
    VALUES (2, "Exhaust Fan", "60.00", 100)

Create TABLE Orders(
  oid INTEGER,
  rdate VARCHAR(20),
  sdate VARCHAR(20),
  customerID INTEGER,
  employeeID INTEGER,
  PRIMARY KEY (oid),
  FOREIGN KEY (customerID) REFERENCES Customer(cid),
  FOREIGN KEY (employeeID) REFERENCES Employee(eid)
);

INSERT INTO Orders
    VALUES (1, "4/1/2017", "4/2/2017", 1, 1);
INSERT INTO Orders
    VALUES (2, "1/1/2015", "2/2/2015", 2, 2);

CREATE TABLE PartOrder(
  poid INTEGER,
  quantity INTEGER,
  partID INTEGER,
  orderID INTEGER,
  PRIMARY KEY (poid),
  FOREIGN KEY (partID) REFERENCES Parts(pid),
  FOREIGN KEY (orderID) REFERENCES Orders(oid)
);

INSERT INTO PartOrder
    VALUES (1, 20, 1, 1);
INSERT INTO PartOrder
    VALUES (2, 40, 2, 2);

-- Order information joined with customer information

-- Employee information with number of orders they have processed
SELECT * FROM Employee

-- Delete all partorder records where the shipping date is before the current one


-- Add a column called order processed to the PartOrder table
ALTER TABLE PartOrder
ADD orderProcessed VARCHAR(20)

-- Create a view of Part information together with the total quantity of such parts for which Orders were received in 2016






























