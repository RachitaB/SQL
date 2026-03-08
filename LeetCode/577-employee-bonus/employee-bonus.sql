# Write your MySQL query statement below
SELECT 
    name,
    bonus
FROM Employee emp 
LEFT JOIN Bonus b ON emp.empID = b.empID
WHERE b.bonus<1000 OR b.bonus IS NULL;