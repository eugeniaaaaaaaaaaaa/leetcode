-- Write your PostgreSQL query statement below
(SELECT u.name AS results
FROM MovieRating r
LEFT JOIN Users u
ON r.user_id = u.user_id
GROUP BY u.name
ORDER BY COUNT(*) DESC, u.name
LIMIT 1)

UNION ALL 

(SELECT m.title AS results
FROM MovieRating r
LEFT JOIN Movies m
ON r.movie_id = m.movie_id
WHERE created_at BETWEEN '2020-02-01'::DATE AND '2020-02-29'::DATE
GROUP BY m.title
ORDER BY AVG(r.rating) DESC, m.title
LIMIT 1);