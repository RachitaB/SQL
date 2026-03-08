# Write your MySQL query statement below
SELECT 
    temp.Department AS Department,
    temp.Employee as Employee,
    temp.Salary AS Salary
FROM
(
    SELECT
        d.name as Department,
        e.name as Employee,
        e.salary as Salary,
        DENSE_RANK() OVER(PARTITION BY e.departmentId ORDER BY e.salary desc) as rnk
    FROM Employee e
    JOIN Department d ON e.departmentId=d.id
) AS temp
where rnk=1;
