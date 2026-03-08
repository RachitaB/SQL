# Write your MySQL query statement below
SELECT
    person_name
FROM (
    SELECT
        person_name,
        weight,
        turn,
        SUM(weight) OVER (ORDER BY turn) as weight_total
    FROM Queue
) AS t
WHERE t.weight_total<=1000
ORDER BY weight_total desc
LIMIT 1;