# Write your MySQL query statement below
SELECT
    empU.unique_id as unique_id,
    emp.name as name
FROM Employees emp
LEFT JOIN EmployeeUNI empU
ON emp.id=empU.id;
