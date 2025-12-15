-- LeetCode 1552: Find Products With Valid Serial Number
-- Concept: REGEXP_LIKE (Regukar Expressions) + WHERE filtering + ORDER BY

SELECT product_id, product_name, description
FROM products
WHERE REGEXP_LIKE(
    description,
    '(^|[^A-Za-z0-9])SN[0-9]{4}-[0-9]{4}([^0-9]|$)',
    'c'
)
ORDER BY product_id;
