-- LeetCode 1407: Top Travellers
-- Concept: LEFT JOIN + GROUP BY + SUM + NULL Handling + ORDER BY

SELECT
    u.name,
    IFNULL(SUM(r.distance), 0) AS travelled_distance
FROM Users u
LEFT JOIN Rides r
    ON u.id = r.user_id
GROUP BY
    u.id, u.name
ORDER BY
    travelled_distance DESC,
