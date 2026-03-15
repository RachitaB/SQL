# Write your MySQL query statement below
WITH temp1 AS(
    SELECT 
        student_id,COUNT(DISTINCT subject) AS total_subject,SUM(hours_studied) AS total_hrs
    FROM study_sessions GROUP BY student_id
),
temp2 AS(
    SELECT
        student_id,session_date,
        DATEDIFF(LEAD(session_date) OVER(PARTITION BY student_id ORDER BY session_date),session_date) AS date_diff
    FROM study_sessions
)
SELECT
    s.student_id,
    s.student_name,
    s.major,
    COUNT(DISTINCT s1.subject) AS cycle_length,
    MAX(t1.total_hrs) AS total_study_hours
FROM study_sessions s1 
JOIN temp1 t1 ON s1.student_id=t1.student_id JOIN students s ON s1.student_id=s.student_id
JOIN study_sessions s2 ON s1.student_id=s2.student_id AND s1.subject=s2.subject 
AND s1.session_date<s2.session_date AND DATEDIFF(s2.session_date,s1.session_date) BETWEEN t1.total_subject AND t1.total_subject*2
WHERE EXISTS (SELECT t2.student_id FROM temp2 t2 WHERE s1.student_id=t2.student_id AND s1.session_date=t2.session_date AND t2.date_diff<3)
GROUP BY s1.student_id,s.student_name,s.major
HAVING cycle_length>=3
ORDER BY cycle_length DESC,total_study_hours DESC;