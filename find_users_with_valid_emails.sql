-- LeetCode 1517: Find Users With Valid E-mails
-- Concept: REGEXP (Pattern Matching) + WHERE filtering

SELECT user_id, name, mail
FROM Users
WHERE mail REGEXP '^[A-Za-z][A-Za-z0-9._-]*@leetcode\\.com$';
