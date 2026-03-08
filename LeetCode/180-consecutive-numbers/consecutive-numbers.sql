# Write your MySQL query statement below
with temp as(
    SELECT
        id,
        LAG(num) OVER() AS prev,
        num AS curr,
        LEAD(num) OVER() AS next
    FROM Logs
)
SELECT 
    DISTINCT curr as ConsecutiveNums 
FROM temp
WHERE curr=prev AND next=curr;