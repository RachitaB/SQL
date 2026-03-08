CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      # Write your MySQL query statement below.
      with ranked as(
            SELECT
            *,
            Dense_Rank() over(ORDER BY salary desc) as rnk
            FROM Employee
      )
      SELECT DISTINCT salary FROM ranked where rnk=n
  );
END