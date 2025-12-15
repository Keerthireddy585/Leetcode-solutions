-- LeetCode 3436: Find Valid E-mails
-- Concept: REGEXP pattern Matching + string validation

SELECT user_id, email
FROM Users
WHERE email REGEXP '^[A-Za-z0-9_]+@[A-Za-z]+\\.com$'
ORDER BY user_id;
