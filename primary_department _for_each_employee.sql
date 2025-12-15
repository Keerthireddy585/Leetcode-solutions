-- LeetCode 1789: Primary Department for Each Employee
-- Concept: UNION + GROUP BY + HAVING + Conditional Filtering

SELECT employee_id, department_id
FROM Employee
WHERE primary_flag = 'Y'

UNION

SELECT employee_id, department_id
FROM Employee
GROUP BY employee_id
HAVING COUNT(*) = 1;
