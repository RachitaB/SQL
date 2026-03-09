SELECT
  COUNT(company_id) as duplicate_companies
FROM
(
  SELECT 
    company_id,
    COUNT(*) as dup_count
  FROM job_listings
  GROUP BY company_id,title,description
) AS t1
WHERE dup_count>1;
