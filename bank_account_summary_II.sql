-- LeetCode 1587: Bank Account Summary II
-- Concept: JOIN + GROUP BY + HAVING

SELECT u.name, sum(t.amount) AS balance
FROM Users u
JOIN Transactions t 
    ON u.account = t.account
GROUP BY u.name
HAVING SUM(t.amount) > 10000;
