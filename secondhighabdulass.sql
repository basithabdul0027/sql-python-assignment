CREATE TABLE employee5 (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    salary INT
);

INSERT INTO employee5 (id, name, salary) VALUES
(1, 'Alice', 5000),
(2, 'Bob', 6000),
(3, 'Charlie', 7000),
(4, 'David', 8000),
(5, 'Eve', 9000);

SELECT MAX(salary) AS SecondHighestSalary
FROM employee5
WHERE salary < (
    SELECT max_salary
    FROM (
        SELECT MAX(salary) AS max_salary FROM employee5
    ) AS subquery
);
