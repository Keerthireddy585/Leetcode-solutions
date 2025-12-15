-- LeetCode 182: Duplicate Emails
-- Concept: GROUP BY + HAVING

SELECT email
FROM Person
GROUP BY email
HAVING COUNT(email) > 1;
