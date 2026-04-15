WITH time_age_group AS (
SELECT
  ag.age_bucket,
  SUM(CASE WHEN activity_type='send' THEN time_spent ELSE 0 END) AS time_spend_send,
  SUM(CASE WHEN activity_type='open' THEN time_spent ELSE 0 END) AS time_spend_open
FROM activities act
JOIN age_breakdown ag ON act.user_id = ag.user_id
GROUP BY ag.age_bucket
)
SELECT
  age_bucket,
  ROUND((time_spend_send / (time_spend_send+time_spend_open))* 100.0, 2) AS send_prec,
  ROUND((time_spend_open / (time_spend_send+time_spend_open))* 100.0, 2) AS open_prec
FROM time_age_group;
