-- LeetCode 1731: The Number of Employees Which Report to Each Employee
-- Concept: Self JOIN + GROUP BY + COUNT + AVG + ROUND

SELECT
    m.employee_id,
    m.name,
    COUNT(e.employee_id) AS reports_count,
    ROUND(AVG(e.age)) AS average_age
FROM Employees m
JOIN Employees e
    ON m.employee_id = e.reports_to
GROUP BY m.employee_id, m.name
ORDER BY m.employee_id;
