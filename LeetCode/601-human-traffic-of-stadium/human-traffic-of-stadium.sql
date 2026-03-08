-- # Write your MySQL query statement below
WITH id_num AS (
    SELECT
        id,
        visit_date,
        people,
        id - ROW_NUMBER() OVER (ORDER BY id) AS grp
    FROM Stadium
    WHERE people >= 100
)
SELECT id, visit_date, people
FROM id_num
WHERE grp IN (
    SELECT grp
    FROM id_num
    GROUP BY grp
    HAVING COUNT(*) >= 3
)
ORDER BY visit_date;
