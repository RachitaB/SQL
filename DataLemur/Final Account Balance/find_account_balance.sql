-- Solution

SELECT account_id,
  SUM(CASE 
  WHEN transaction_type='Deposit' THEN amount 
  WHEN transaction_type='Withdrawal' THEN -1*amount
  END) AS final_amount
FROM transactions
GROUP BY account_id
ORDER BY account_id;
