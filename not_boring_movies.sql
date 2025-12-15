-- LeetCode 620: Not Boring Movies
-- Concept: WHERE Filtering + Modulo Operator + ORDER BY

SELECT id, movie, description, rating
FROM Cinema
WHERE id%2=1 AND description <> "boring"
ORDER BY rating DESC;
