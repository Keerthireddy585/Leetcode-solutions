-- LeetCode 619: Biggest Single Number
-- Concept: GROUP BY + HAVING + MAX

SELECT MAX(num) AS num
FROM MyNumbers
WHERE num IN (
    SELECT num
    FROM MyNumbers
    GROUP BY num
    HAVING COUNT(*)=1
);
