SELECT 
  DATE_PART('month',submit_date) AS mth,
  product_id as product,
  ROUND(AVG(stars),2) as avg_stars
FROM reviews
GROUP BY DATE_PART('month',submit_date),product_id
ORDER BY mth,product;
