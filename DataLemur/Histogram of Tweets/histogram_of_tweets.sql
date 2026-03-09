SELECT 
  tweets_per_user AS tweet_bucket,
  COUNT(user_id) as user_num
FROM (
  SELECT
    user_id,
    COUNT(tweet_id) as tweets_per_user
  FROM tweets
  WHERE Year(tweet_date)=2022
  GROUP BY user_id
) AS t
GROUP BY tweets_per_user;
