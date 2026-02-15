-- Write your PostgreSQL query statement below
WITH ordered_in_Feb2020 AS 
    (SELECT p.product_name, SUM(o.unit) AS unit
    FROM Orders o
    LEFT JOIN Products p
    ON o.product_id = p.product_id
    WHERE o.order_date BETWEEN '2020-02-01' AND '2020-02-29'
    GROUP BY p.product_name)

SELECT *
FROM ordered_in_Feb2020
WHERE unit >= 100;
