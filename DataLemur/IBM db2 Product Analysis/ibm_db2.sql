-- Solution
with emp_cte AS (
  SELECT
    e.employee_id,
    COALESCE(COUNT(DISTINCT query_id), 0) AS unique_queries
  FROM employees AS e 
  LEFT JOIN queries AS q
  ON e.employee_id=q.employee_id
  AND query_starttime >= '2023-07-01T00:00:00Z'
    AND query_starttime < '2023-10-01T00:00:00Z'
  GROUP BY e.employee_id
)

SELECT
  unique_queries,
  COUNT(employee_id) AS employee_count
FROM emp_cte
GROUP BY unique_queries
ORDER BY unique_queries;

