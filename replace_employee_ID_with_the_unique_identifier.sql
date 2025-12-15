-- LeetCode 1378: Replace Employee ID With The Unique Identifier
-- Concept: LEFT JOIN + Column Replacement

SELECT
    u.unique_id,
    e.name
FROM Employees e
LEFT JOIN EmployeeUNI u
    ON e.id = u.id;
