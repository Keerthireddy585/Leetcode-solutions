-- LeetCode 586: Customer Placing the Largest Number of Orders
-- Concept: GROUP BY + ORDER BY + LIMIT

SELECT customer_number
FROM orders
GROUP BY customer_number 
ORDER BY COUNT(*) DESC
LIMIT 1;
