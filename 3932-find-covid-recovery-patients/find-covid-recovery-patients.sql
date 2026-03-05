# Write your MySQL query statement below
SELECT
    c1.patient_id,
    p.patient_name,
    p.age,
    DATEDIFF(MIN(c2.test_date),MIN(c1.test_date)) as recovery_time
FROM covid_tests c1
JOIN covid_tests c2 ON c1.patient_id = c2.patient_id AND c1.test_date<c2.test_date
AND c1.result="Positive" AND c2.result="Negative"
JOIN patients p ON p.patient_id=c1.patient_id
GROUP BY p.patient_id,p.patient_name,p.age
ORDER BY recovery_time,p.patient_name;