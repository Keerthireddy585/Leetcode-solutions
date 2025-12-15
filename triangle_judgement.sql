-- LeetCode 610: Triangle Judgement
-- Concept: CASE WHEN + Conditional Logic

SELECT 
    x, 
    y, 
    z,
    CASE 
        WHEN x + y > z AND x + z > y AND y + z > x 
        THEN 'Yes' 
        ELSE 'No' 
    END AS triangle
FROM Triangle;
