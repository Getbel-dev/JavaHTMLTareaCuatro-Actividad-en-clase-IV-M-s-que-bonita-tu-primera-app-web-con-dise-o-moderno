CREATE DATABASE Tienda;
USE tienda;

CREATE TABLE Productos (
  Id int auto_increment KEY,
  Name varchar(255) NOT NULL,
  Precio double NOT NULL,
  Stock int NOT NULL
);

INSERT INTO Productos (Name, precio,stock )
Values ('Jeans', 15000, 20);

INSERT INTO Productos (Name, precio,stock )
Values ('Swetter', 10000, 10);

INSERT INTO Productos (Name, precio,stock )
Values ('T-shirt', 2500, 20);

INSERT INTO Productos (Name, precio,stock )
Values ('Short', 5000, 25);

INSERT INTO Productos (Name, precio,stock )
Values ('Shoes', 20000, 15);


Select * FROM Productos;

Delete from Productos where Id =6

CREATE TABLE Users (
  Id int auto_increment KEY,
  Alias varchar(255) NOT NULL,
  Email varchar(255) NOT NULL,
  Password varchar(255) NOT NULL,
  Status char NOT NULL
);

INSERT INTO Users (Alias, Email,Password, Status )
Values ('Gespi', 'Gespi@gmail', 'Welcome01',1);

Select * FROM Users;
Delete from Users where Id =1

INSERT INTO Users (Alias, Email,Password, Status )
Values ('Gespi', 'Gespi@gmail.com', 'Welcome01',1);