# Write your MySQL query statement below
SELECT 
    cust.name as Customers 
FROM Customers cust 
LEFT JOIN Orders o ON cust.id=o.customerID
WHERE o.id IS NULL;