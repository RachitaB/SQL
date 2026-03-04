# Write your MySQL query statement below
SELECT
    product_id,
    product_name,
    description
FROM products
WHERE description LIKE BINARY '%SN%' AND
description REGEXP '(^|[^A-Za-z0-9])SN[0-9]{4}-[0-9]{4}([^0-9A-Z]|$)'
ORDER BY product_id;