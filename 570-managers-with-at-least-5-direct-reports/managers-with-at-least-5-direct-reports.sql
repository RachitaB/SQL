# Write your MySQL query statement below
SELECT
    emp.name
FROM Employee emp
LEFT JOIN Employee mgr ON mgr.managerId = emp.id
GROUP BY emp.id
HAVING COUNT(*)>=5;