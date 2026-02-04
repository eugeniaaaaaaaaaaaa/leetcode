-- Write your PostgreSQL query statement below
SELECT m.name
FROM Employee e
LEFT JOIN Employee m ON e.managerId = m.id
GROUP BY e.managerID, m.name
HAVING COUNT(m.id) >= 5