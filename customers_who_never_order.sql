-- LeetCode 183: Customers Who Never Order
-- Concept: LEFT JOIN + NULL check

SELECT c.name AS Customers
FROM Customers c
LEFT JOIN Orders o ON c.id = o.customerId
WHERE o.customerId IS NULL;
