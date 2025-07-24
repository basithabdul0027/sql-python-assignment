
CREATE TABLE sales (
    saleid SERIAL PRIMARY KEY,
    productid INT NOT NULL,
    quantity INT NOT NULL,
    saledate DATE NOT NULL
);

INSERT INTO sales (productid, quantity, saledate) VALUES
(1, 5, CURRENT_DATE - INTERVAL '10 days'),
(2, 10, CURRENT_DATE - INTERVAL '5 days'),
(1, 3, CURRENT_DATE - INTERVAL '20 days'),
(3, 8, CURRENT_DATE - INTERVAL '15 days'),
(2, 4, CURRENT_DATE - INTERVAL '29 days'),
(3, 6, CURRENT_DATE - INTERVAL '1 days'),
(4, 12, CURRENT_DATE - INTERVAL '40 days'); 



SELECT productid, SUM(quantity) AS total_quantity
FROM sales
WHERE saledate >= CURRENT_DATE - INTERVAL '30 days'
GROUP BY productid
ORDER BY total_quantity DESC
LIMIT 3;
