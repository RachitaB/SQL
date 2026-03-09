# Facebook Pages With Zero Likes (SQL Problem)

## Problem Statement

You are given two tables containing information about **Facebook pages** and the **likes those pages receive from users**.

Your task is to write a SQL query to find the **IDs of Facebook pages that have received zero likes**.

### Requirements

- Return only the **page IDs** that have **no likes**.
- Sort the output in **ascending order of `page_id`**.

---

## Tables

### `pages` Table

| Column Name | Type |
|-------------|------|
| page_id | integer |
| page_name | varchar |

---

### `page_likes` Table

| Column Name | Type |
|-------------|------|
| user_id | integer |
| page_id | integer |
| liked_date | datetime |

---

## Example Input

### `pages`

| page_id | page_name |
|--------|-----------|
| 20001 | SQL Solutions |
| 20045 | Brain Exercises |
| 20701 | Tips for Data Analysts |

### `page_likes`

| user_id | page_id | liked_date |
|--------|--------|-------------|
| 111 | 20001 | 04/08/2022 00:00:00 |
| 121 | 20045 | 03/12/2022 00:00:00 |
| 156 | 20001 | 07/25/2022 00:00:00 |

---

## Expected Output

| page_id |
|--------|
| 20701 |

---

## Explanation

- **Page 20001** has likes from users **111** and **156**.
- **Page 20045** has a like from user **121**.
- **Page 20701** has **no likes**, so it is included in the output.

---

## Notes

- The dataset used for testing may differ from the example shown.
- The example is provided only to demonstrate the expected output format.
