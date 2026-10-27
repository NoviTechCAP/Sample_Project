create table Sales(
OrderId  INT primary key,
ProductId INT,
FOREIGN KEY (ProductId) REFERENCES Products(ProductId),
Totalsales decimal(10,2),
Orderdate Date,
Profit NUMERIC (10,2),
City VARCHAR (50),
Discount Decimal(10,2)
);

