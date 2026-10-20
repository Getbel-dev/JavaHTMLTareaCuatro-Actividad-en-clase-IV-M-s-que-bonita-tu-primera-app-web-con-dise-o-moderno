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