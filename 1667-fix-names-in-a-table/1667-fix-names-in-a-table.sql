-- Write your PostgreSQL query statement below
SELECT user_id, UPPER(SUBSTRING(name for 1)) || LOWER(SUBSTRING(name from 2)) AS name
FROM Users
ORDER BY user_id