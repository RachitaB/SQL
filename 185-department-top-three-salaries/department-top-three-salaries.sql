# Write your MySQL query statement below
SELECT 
    Department,
    Employee,
    Salary
FROM (
    SELECT
        emp.name as Employee,
        emp.salary as Salary,
        dept.name as Department,
        DENSE_RANK() OVER(PARTITION BY dept.name ORDER BY emp.salary desc) as rnk
    FROM Employee emp
    JOIN Department dept ON emp.departmentID = dept.id
    ORDER BY dept.name
) AS rnk_table 
WHERE rnk<=3 ;
