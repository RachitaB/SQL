# Write your MySQL query statement below
with temp as
(
    SELECT
        student_id,
        subject,
        FIRST_VALUE(score) OVER(PARTITION BY student_id,subject ORDER BY exam_date) as first_score,
        FIRST_VALUE(score) OVER(PARTITION BY student_id,subject ORDER BY exam_date desc) as latest_score
    FROM Scores
)
SELECT
    DISTINCT * 
FROM temp
WHERE first_score<latest_score
ORDER BY student_id,subject;