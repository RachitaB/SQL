# Write your MySQL query statement below
with ranked_employees AS 
(
    SELECT
        pr.employee_id,
        e.name,
        pr.rating,
        RANK() OVER(PARTITION BY pr.employee_id ORDER BY review_date desc) as rnk
    FROM employees e
    JOIN performance_reviews pr ON e.employee_id = pr.employee_id
),
rnk_classification AS
(
    SELECT
        *,
        MAX(CASE WHEN rnk=1 THEN rating END) as latest_rating,
        MAX(CASE WHEN rnk=2 THEN rating END) as mid_rating,
        MAX(CASE WHEN rnk=3 THEN rating END) as initial_rating
    FROM ranked_employees
    GROUP BY employee_id,name
)
SELECT
    employee_id,
    name,
    (latest_rating - initial_rating) as improvement_score
FROM rnk_classification
WHERE latest_rating IS NOT NULL AND mid_rating IS NOT NULL AND initial_rating IS NOT NULL
AND latest_rating>mid_rating AND mid_rating>initial_rating
ORDER BY improvement_score desc,name;