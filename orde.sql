INSERT INTO Orders
(CustomerID, ProductID, OrderDate, Quantity, TotalAmount)

SELECT
floor(random()*20 + 1)::int,
floor(random()*10 + 1)::int,
CURRENT_DATE - floor(random()*365)::int,
floor(random()*5 + 1)::int,

(
    floor(random()*5 + 1)::int *
    (
        ARRAY[
            50000,25000,2000,1500,800,
            5000,12000,8000,700,3500
        ]
    )[floor(random()*10 + 1)::int]
)

FROM generate_series(1,100);