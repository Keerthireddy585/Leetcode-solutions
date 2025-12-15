-- LeetCode 1484: Group Sold Products By The Date
-- Concept: GROUP BY + COUNT(DISTINCT) + GROUP_CONCAT  with ORDER BY

SELECT
    sell_date,
    COUNT(DISTINCT product) AS num_sold,
    GROUP_CONCAT(DISTINCT product ORDER BY product SEPARATOR ',') AS products
FROM Activities
GROUP BY sell_date
ORDER BY sell_date;
