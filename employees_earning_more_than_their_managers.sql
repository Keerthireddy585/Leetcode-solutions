-- LeetCode 181: Employees Earning More Than Their Managers
-- Concept: Self JOIN + Comparision

SELECT e.name AS Employee
FROM Employee e
JOIN Employee m ON e.managerId = m.id
WHERE e.salary > m.salary;
