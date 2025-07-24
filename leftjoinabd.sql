
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100)
);

CREATE TABLE Orders2 (
    OrderID SERIAL PRIMARY KEY,
    ProductID INT,
    OrderDate DATE,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

INSERT INTO Products (ProductID, ProductName) VALUES
(1, 'Laptop'),
(2, 'Mouse'),
(3, 'Keyboard'),
(4, 'Monitor'),
(5, 'Printer');

INSERT INTO Orders2 (ProductID, OrderDate) VALUES
(1, '2024-07-01'),
(2, '2024-07-03'),
(4, '2024-07-05');

SELECT p.ProductID, p.ProductName
FROM Products p
LEFT JOIN Orders2 o ON p.ProductID = o.ProductID
WHERE o.ProductID IS NULL;
