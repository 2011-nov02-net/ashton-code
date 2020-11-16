

CREATE TABLE Customers(
	ID INT PRIMARY KEY IDENTITY,
	FirstName NVARCHAR(30) NOT NULL,
	LastName NVARCHAR(30) NOT NULL,
	CardNumber NVARCHAR(30) NOT NULL
)

CREATE TABLE Products(
	ID INT PRIMARY KEY IDENTITY,
	Name NVARCHAR(30) NOT NULL,
	Price INT NOT NULL
)

CREATE TABLE Orders(
	ID INT PRIMARY KEY IDENTITY,
	ProductID INT NOT NULL
		FOREIGN KEY REFERENCES Products(ID),
	ID INT PRIMARY KEY IDENTITY,
	CustomerID INT NOT NULL
		FOREIGN KEY REFERENCES Customers(ID)
)

INSERT INTO Customers(FirstName, LastName, CardNumber)
VALUES  ('John', 'Smith', '56323625563'),
		('Jake', 'Locker', '12457744825'),
		('Brad', 'Williams', '45266877459')

INSERT INTO Products(Name, Price)
VALUES  ('Gaming PC', 2200)
		('Mouse', 45)
		('Keyboard', 43)

INSERT INTO ORDERS
VALUES  (1, 1)
		(1, 3)
		(1, 2)

INSERT INTO Products
VALUES ('IPhone', 200)

INSERT INTO Customers
VALUES ('Tina', 'Smith', '1236457469664')

INSERT INTO Orders(ProductID, CustomerID)
select 
    4, ID
from Customers where name like 'TINA%';

Select * FORM ORDERS
WHERE CUSTOMERID ANY (
	SELECT ID FROM CUSTOMER
	WHERE Name like 'TINA%'
)

SELECT SUM(Price)
FROM Products
WHERE ID = (
	SELECT ID FROM 
	Products where Name = 'IPhone'
)














