-- Write your PostgreSQL query statement below
SELECT m.employee_id, m.name, COUNT(*) AS reports_count, AVG(e.age)::INTEGER average_age
FROM Employees m
INNER JOIN Employees e
ON e.reports_to = m.employee_id
GROUP BY m.employee_id, m.name
ORDER BY employee_id;