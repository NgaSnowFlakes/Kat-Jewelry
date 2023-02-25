create database Kat_Jewelry
go
-- drop database Kat_Jewelry
use Kat_Jewelry
go
-- Creating the Categories table
CREATE TABLE Categories (
CategoryID INT PRIMARY KEY IDENTITY(1,1),
CategoryName VARCHAR(50) NOT NULL
);

-- Creating the Products table
CREATE TABLE Products (
ProductID INT PRIMARY KEY IDENTITY(1,1),
ProductName VARCHAR(50) NOT NULL,
ProductDescription VARCHAR(MAX) NOT NULL,
Price DECIMAL(18, 2) NOT NULL,
ProductImage varchar(max) NULL,
Stock INT NOT NULL,
CategoryID INT NOT NULL,
FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);

-- Creating the Roles table
CREATE TABLE Roles (
RoleID INT PRIMARY KEY IDENTITY(1,1),
RoleName VARCHAR(50) NOT NULL
);

-- Creating the Customers table
CREATE TABLE Customers (
CustomerID INT PRIMARY KEY IDENTITY(1,1),
FirstName VARCHAR(50) NOT NULL,
LastName VARCHAR(50) NOT NULL,
Email VARCHAR(50) NOT NULL,
[Password] VARCHAR(50) NOT NULL,
RoleID INT NOT NULL,
FOREIGN KEY (RoleID) REFERENCES Roles(RoleID)
);

-- Creating the Orders table
CREATE TABLE Orders (
OrderID INT PRIMARY KEY IDENTITY(1,1),
OrderDate DATETIME NOT NULL,
CustomerID INT NOT NULL,
TotalAmount DECIMAL(18, 2) NOT NULL,
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Creating the OrderDetails table
CREATE TABLE OrderDetails (
OrderDetailID INT PRIMARY KEY IDENTITY(1,1),
OrderID INT NOT NULL,
ProductID INT NOT NULL,
Quantity INT NOT NULL,
Price DECIMAL(18, 2) NOT NULL,
FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Inserting data into the Roles table
INSERT INTO Roles (RoleName)
VALUES ('Admin'), ('User');

-- Inserting data into the Categories table
INSERT INTO Categories (CategoryName)
VALUES ('Earrings'), ('Necklaces'), ('Bracelets'), ('Rings'), ('Anklets');

-- Inserting data into the Products table
INSERT INTO Products (ProductName, ProductDescription, Price, Stock, CategoryID)
VALUES ('Gold Hoop Earrings', 'Stylish gold hoop earrings for any occasion', 19.99, 100, 1),
       ('Silver Choker Necklace', 'Elegant silver choker necklace for a sophisticated look', 29.99, 50, 2),
       ('Pearl Bracelet', 'Classic pearl bracelet for a timeless touch', 49.99, 25, 3),
       ('Diamond Engagement Ring', 'Sparkling diamond engagement ring for your special day', 999.99, 10, 4),
       ('Anklet with Charms', 'Fun anklet with colorful charms for a playful look', 12.99, 200, 5);

-- Inserting data into the Customers table
INSERT INTO Customers (FirstName, LastName, Email, Password, RoleID)
VALUES ('John', 'Doe', 'johndoe@example.com', 'password123', 2),
       ('Jane', 'Doe', 'janedoe@example.com', 'password456', 2),
       ('Jim', 'Smith', 'jimsmith@example.com', 'password789', 2),
       ('Sarah', 'Johnson', 'sarahjohnson@example.com', 'password101', 2),
       ('Tom', 'Brown', 'tombrown@example.com', 'password112', 2);

