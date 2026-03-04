# Write your MySQL query statement below
WITH RECURSIVE emp_levels AS(
    SELECT
        employee_id,manager_id,employee_name,salary,1 AS level
    FROM Employees
    WHERE manager_id IS NULL
    UNION ALL
    SELECT
        e.employee_id,e.manager_id,e.employee_name,e.salary,e2.level+1 AS level
    FROM Employees e JOIN emp_levels e2 
    ON e.manager_id = e2.employee_id
),
direct_reports AS (
    SELECT 
        manager_id,
        employee_id as sub_id,
        employee_name,
        level,
        salary 
    FROM emp_levels
    WHERE manager_id IS NOT NULL
    UNION ALL
    SELECT
        dr.manager_id,
        e.employee_id,
        e.employee_name,
        e.level,
        e.salary
    FROM direct_reports dr JOIN emp_levels e ON e.manager_id = dr.sub_id
)
SELECT 
    e.employee_id,
    e.employee_name,
    e.level,
    COUNT(sub_id) AS team_size,
    IFNULL(SUM(dr.salary) + e.salary,e.salary) AS budget
FROM emp_levels e LEFT JOIN direct_reports dr ON e.employee_id = dr.manager_id
GROUP BY e.employee_id
ORDER BY level,budget DESC,employee_name;
