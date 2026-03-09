# Average Product Rating by Month (SQL Problem)

## Problem Statement

You are given a table containing **product reviews** submitted by users.

Write a SQL query to calculate the **average star rating for each product per month**.

---

## Requirements

- Extract the **month** from `submit_date`.
- Group the results by:
  - **month**
  - **product_id**
- Calculate the **average star rating**.
- Round the average rating to **two decimal places**.
- Sort the output by:
  1. **month (ascending)**
  2. **product_id (ascending)**

---

## Table Schema

### `reviews`

| Column Name | Type |
|-------------|------|
| review_id | integer |
| user_id | integer |
| submit_date | datetime |
| product_id | integer |
| stars | integer (1–5) |

---

## Example Input

| review_id | user_id | submit_date | product_id | stars |
|-----------|--------|-------------|-----------|------|
| 6171 | 123 | 06/08/2022 00:00:00 | 50001 | 4 |
| 7802 | 265 | 06/10/2022 00:00:00 | 69852 | 4 |
| 5293 | 362 | 06/18/2022 00:00:00 | 50001 | 3 |
| 6352 | 192 | 07/26/2022 00:00:00 | 69852 | 3 |
| 4517 | 981 | 07/05/2022 00:00:00 | 69852 | 2 |

---

## Expected Output

| mth | product | avg_stars |
|----|--------|-----------|
| 6 | 50001 | 3.50 |
| 6 | 69852 | 4.00 |
| 7 | 69852 | 2.50 |

---

## Explanation

- **Product 50001** received ratings **4 and 3** in **June**, giving an average rating of **3.50**.
- **Product 69852** received:
  - **4 stars in June** → average **4.00**
  - **2 and 3 stars in July** → average **2.50**

---

## SQL Solution

```sql
SELECT 
    EXTRACT(MONTH FROM submit_date) AS mth,
    product_id AS product,
    ROUND(AVG(stars), 2) AS avg_stars
FROM reviews
GROUP BY mth, product_id
ORDER BY mth, product_id;
