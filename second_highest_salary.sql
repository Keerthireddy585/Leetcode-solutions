-- LeetCode 176: Second Highest Salary
-- Concept: Subquery + DISTINCT + ORDER BY + LIMIT/OFFSET

SELECT(
    SELECT DISTINCT salary
    FROM Employee
    ORDER BY salary DESC
    LIMIT 1 OFFSET 1
) AS SecondHighestSalary;

        # OR

SELECT MAX(salary) AS SecondHighestSalary
FROM Employee
WHERE salary < (SELECT MAX(salary) FROM Employee);
