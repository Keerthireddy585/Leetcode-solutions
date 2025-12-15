-- LeetCode 570: Managers with at Least 5 Direct Reports
-- Concept: Self JOIN + GROUP BY + HAVING + COUNT

SELECT e.name
FROM Employee e
JOIN Employee r
  ON e.id = r.managerId
GROUP BY e.id, e.name
HAVING COUNT(r.id) >= 5;
