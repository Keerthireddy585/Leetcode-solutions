-- LeetCode 1757: Recyclable and Low Fat Products
-- Concept: WHERE Filtering + Logical AND

SELECT product_id
FROM Products
WHERE low_fats = 'Y'
  AND recyclable = 'Y';
