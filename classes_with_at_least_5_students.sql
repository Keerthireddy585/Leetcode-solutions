-- LeetCode 596: Class With at Least 5 Students
-- Concept: GROUP BY + HAVING

SELECT class
FROM Courses
GROUP BY class
HAVING COUNT(student)>=5;
