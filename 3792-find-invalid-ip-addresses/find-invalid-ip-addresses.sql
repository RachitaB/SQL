# Write your MySQL query statement below
with ip_octet AS 
(
    SELECT
        ip,
        SUBSTRING_INDEX(ip,'.',1) AS octet1,
        SUBSTRING_INDEX(SUBSTRING_INDEX(ip,'.',2),'.',-1) AS octet2,
        SUBSTRING_INDEX(SUBSTRING_INDEX(ip,'.',3),'.',-1) AS octet3,
        SUBSTRING_INDEX(ip,'.',-1) AS octet4,
        LENGTH(ip) - LENGTH(REPLACE(ip,'.','')) + 1 AS oct_cnt
    FROM logs
),
invalid_ips AS
(
    SELECT
        ip,
        CASE
            WHEN oct_cnt <> 4 THEN 1

            WHEN CAST(octet1 AS UNSIGNED) > 255
              OR CAST(octet2 AS UNSIGNED) > 255
              OR CAST(octet3 AS UNSIGNED) > 255
              OR CAST(octet4 AS UNSIGNED) > 255
            THEN 1

            WHEN (LENGTH(octet1) > 1 AND octet1 LIKE '0%')
              OR (LENGTH(octet2) > 1 AND octet2 LIKE '0%')
              OR (LENGTH(octet3) > 1 AND octet3 LIKE '0%')
              OR (LENGTH(octet4) > 1 AND octet4 LIKE '0%')
            THEN 1

            ELSE 0
        END AS is_invalid
FROM ip_octet
)
SELECT
    ip,
    COUNT(*) AS invalid_count
FROM invalid_ips
WHERE is_invalid=1
GROUP BY ip
ORDER BY invalid_count DESC, ip DESC;