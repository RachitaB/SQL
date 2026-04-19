-- Solution

SELECT 
  COUNT(call_count) AS policy_holder_count
FROM
  (
    SELECT
      policy_holder_id,
      COUNT(case_id) as call_count
    FROM callers
    GROUP BY policy_holder_id
    HAVING COUNT(case_id)>=3
  ) 
AS calls;
