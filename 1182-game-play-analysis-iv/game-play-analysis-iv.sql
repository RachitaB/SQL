# Write your MySQL query statement below
with temp AS (
    SELECT
        player_id,
        MIN(event_date) as first_login
    FROM Activity
    GROUP BY player_id
)
SELECT 
    ROUND(COUNT(DISTINCT t.player_id) / (SELECT COUNT(DISTINCT player_id) FROM Activity),2) AS fraction
FROM temp t JOIN Activity act
ON t.player_id=act.player_id
AND act.event_date = DATE_ADD(t.first_login,INTERVAL 1 day);