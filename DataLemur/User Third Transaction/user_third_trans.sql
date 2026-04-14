-- Solution
SELECT 
  user_id,
  spend,
  transaction_date
FROM 
  (
  SELECT
    user_id,
    spend,
    transaction_date,
    RANK() OVER(PARTITION BY user_id ORDER BY transaction_date ASC) as rnk_trans
  FROM transactions
) AS trans
WHERE rnk_trans =3;
