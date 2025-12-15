-- LeetCode 584: Find Customer Referee
-- Concept: WHERE Clause + Inequality (!=) + IS NULL + OR condition

SELECT name
FROM Customer
WHERE referee_id !=2 OR referee_id IS NULL;
