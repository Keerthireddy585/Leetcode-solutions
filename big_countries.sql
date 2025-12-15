-- LeetCode 595: Big Countries
-- Concept: WHERE + OR Condition

SELECT name, population, area
FROM World
WHERE area>=3000000 OR population>=25000000;
