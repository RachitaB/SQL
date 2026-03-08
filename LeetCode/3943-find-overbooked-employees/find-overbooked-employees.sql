# Write your MySQL query statement below
WITH temp AS (
    SELECT
        employee_id,
        SUM(duration_hours) as total_hrs
    FROM meetings
    GROUP BY employee_id,WEEKOFYEAR(meeting_date),YEAR(meeting_date)
)
SELECT
    e.employee_id,
    e.employee_name,
    e.department,
    COUNT(t.employee_id) AS meeting_heavy_weeks
FROM employees e 
JOIN temp t ON e.employee_id=t.employee_id
WHERE total_hrs>20
GROUP BY t.employee_id,e.employee_name,e.department
HAVING meeting_heavy_weeks>=2
ORDER BY meeting_heavy_weeks DESC,e.employee_name;