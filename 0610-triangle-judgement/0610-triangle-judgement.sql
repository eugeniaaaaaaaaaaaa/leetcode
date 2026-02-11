-- Write your PostgreSQL query statement below
SELECT t.x, t.y, t.z, c.triangle
FROM Triangle t
LEFT JOIN   (SELECT x, y, z, CASE WHEN
            (x + y > z) AND (y + z > x) AND (x + z > y)
            THEN 'Yes' ELSE 'No' END AS triangle FROM Triangle) c
ON t.x = c.x AND t.y = c.y AND t.z = c.z 