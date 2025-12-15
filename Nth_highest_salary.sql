-- LeetCode 177: Nth Highest Salary
-- Concept: SQL Function + DISTINCT + ORDER BY + LIMIT + OFFSET

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      SELECT DISTINCT salary 
      FROM Employee
      ORDER BY salary DESC
      LIMIT 1 OFFSET N-1
  );
END
