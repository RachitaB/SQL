# Write your MySQL query statement below
SELECT
    proj.project_id,
    ROUND(
        (SUM(emp.experience_years)/COUNT(proj.employee_id))
    ,2) as average_years
FROM Project proj
JOIN Employee emp ON proj.employee_id = emp.employee_id
GROUP BY proj.project_id;
