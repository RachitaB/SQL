-- Solution
WITH temp AS
(SELECT
  app_id,
  CASE WHEN event_type='impression' then 1 ELSE 0 END AS no_imp,
  CASE WHEN event_type='click' then 1 ELSE 0 END AS no_click,
  timestamp
FROM events
WHERE EXTRACT(YEAR FROM timestamp)=2022)

SELECT 
  app_id,
  ROUND(100.0 * SUM(no_click)/SUM(no_imp),2) AS ctr
FROM temp
GROUP BY app_id;

-- OR --
SELECT
  app_id,
  ROUND(100.0 * SUM(CASE WHEN event_type='click' then 1 ELSE 0 END)/
    SUM(CASE WHEN event_type='impression' then 1 ELSE 0 END),2) AS ctr
FROM events
WHERE EXTRACT(YEAR FROM timestamp)=2022
GROUP BY app_id;
