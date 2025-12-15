-- LeetCode 550: Game Play Analysis IV
-- Concept: Self JOIN + DATE_ADD + MIN(subquery) + COUNT ratio + ROUND

SELECT 
    ROUND(
        COUNT(a2.player_id) / COUNT(DISTINCT a1.player_id),
        2
    ) AS fraction
FROM Activity a1
LEFT JOIN Activity a2
    ON a1.player_id = a2.player_id
    AND DATE_ADD(a1.event_date, INTERVAL 1 DAY) = a2.event_date
WHERE a1.event_date = (
    SELECT MIN(event_date)
    FROM Activity
    WHERE player_id = a1.player_id
);
