-- LeetCode 1741: Find Total Time Spent By Each Employee
-- Concept: GROUP BY + SUM + Time Difference (out_time - in_time)

SELECT
    event_day AS day,
    emp_id,
    SUM(out_time - in_time) AS total_time
FROM Employees
GROUP BY emp_id, event_day;
