SELECT
  user_id,
  tweet_date,
  ROUND(rolling_avg_3d,2) AS rolling_avg_3d
FROM (
  SELECT 
    user_id,
    tweet_date,
    AVG(tweet_count) OVER(PARTITION BY user_id ORDER BY tweet_date 
      ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) as rolling_avg_3d
  FROM tweets
) as t;
