# Write your MySQL query statement below
SELECT 
    id,
    COUNT(*) AS num
FROM 
(   SELECT
        requester_id as id
    FROM RequestAccepted
    UNION ALL
    SELECT
        accepter_id as id
    FROM RequestAccepted
) AS temp
GROUP BY temp.id
ORDER BY num  desc
LIMIT 1;