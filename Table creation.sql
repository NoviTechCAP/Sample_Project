CREATE TABLE Customers (
    CustomerID SERIAL PRIMARY KEY,
    CustomerName VARCHAR(100),
    Gender VARCHAR(10),
    City VARCHAR(50),
    JoinDate DATE
);

CREATE TABLE Products (
    ProductID SERIAL PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price NUMERIC(10,2)
);

CREATE TABLE Orders (
    OrderID SERIAL PRIMARY KEY,
    CustomerID INT REFERENCES Customers(CustomerID),
    ProductID INT REFERENCES Products(ProductID),
    OrderDate DATE,
    Quantity INT,
    TotalAmount NUMERIC(10,2)
);