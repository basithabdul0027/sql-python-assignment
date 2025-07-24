
CREATE TABLE Orders (
    OrderID SERIAL PRIMARY KEY,
    CustomerID INT NOT NULL,
    OrderDate DATE NOT NULL
);

INSERT INTO Orders (CustomerID, OrderDate) VALUES
(1, '2024-07-01'),
(1, '2024-07-05'),
(1, '2024-07-10'),
(1, '2024-07-15'),
(2, '2024-07-02'),
(2, '2024-07-10'),
(3, '2024-06-01'),
(3, '2024-06-02'),
(3, '2024-06-03'),
(3, '2024-06-04'),
(4, '2024-05-01'),
(4, '2024-05-10'),
(5, '2024-07-03'),
(5, '2024-07-05'),
(5, '2024-07-07'),
(5, '2024-07-09');

SELECT CustomerID, COUNT(OrderID) AS OrderCount, 
       TO_CHAR(OrderDate, 'YYYY-MM') AS OrderMonth
FROM Orders
GROUP BY CustomerID, OrderMonth
HAVING COUNT(OrderID) > 3;
