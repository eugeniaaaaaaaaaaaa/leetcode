-- Write your PostgreSQL query statement below
SELECT Visits.customer_id, COUNT(*) AS count_no_trans
FROM Visits LEFT JOIN Transactions Trans ON Visits.visit_id=Trans.visit_id
WHERE Trans IS NULL
GROUP BY Visits.customer_id