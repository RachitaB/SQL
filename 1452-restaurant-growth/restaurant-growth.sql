# Write your MySQL query statement below
WITH temp AS
(
    SELECT
        visited_on,
        SUM(amount) as amount,
        ROW_NUMBER() OVER (ORDER BY visited_on) as rn
    FROM Customer
    GROUP BY visited_on
),
temp2 AS (
    SELECT
        visited_on,
        SUM(amount) OVER (ORDER BY visited_on ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) as amount,
        ROUND(AVG(amount) OVER (ORDER BY visited_on ROWS BETWEEN 6 PRECEDING AND CURRENT ROW),2) as average_amount,
        rn
    FROM temp
)
SELECT
    visited_on,
    amount,
    average_amount
FROM temp2
WHERE rn>6;