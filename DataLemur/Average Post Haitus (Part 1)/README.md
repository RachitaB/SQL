# Facebook Posts – Days Between First and Last Post (SQL Problem)

## Problem Statement

You are given a table containing **Facebook posts** made by users.

For each user who **posted at least twice in the year 2021**, write a SQL query to calculate the **number of days between the user's first post and last post in 2021**.

### Requirements

- Consider **only posts made in the year 2021**.
- Include **only users who posted at least twice in 2021**.
- Calculate the difference in days between:
  - the **first post date** in 2021
  - the **last post date** in 2021
- Output the **user_id** and the **number of days between their first and last post**.

---

## Table Schema

### `posts`

| Column Name | Type |
|-------------|------|
| user_id | integer |
| post_id | integer |
| post_content | text |
| post_date | timestamp |

---

## Example Input

| user_id | post_id | post_content | post_date |
|--------|--------|--------------|-----------|
| 151652 | 599415 | Need a hug | 07/10/2021 12:00:00 |
| 661093 | 624356 | Bed. Class 8-12. Work 12-3. Gym 3-5 or 6. Then class 6-10. Another day that's gonna fly by. I miss my girlfriend | 07/29/2021 13:00:00 |
| 004239 | 784254 | Happy 4th of July! | 07/04/2021 11:00:00 |
| 661093 | 442560 | Just going to cry myself to sleep after watching Marley and Me. | 07/08/2021 14:00:00 |
| 151652 | 111766 | I'm so done with covid - need travelling ASAP! | 07/12/2021 19:00:00 |

---

## Expected Output

| user_id | days_between |
|--------|--------------|
| 151652 | 2 |
| 661093 | 21 |

---

## Explanation

- **User 151652**
  - First post: **July 10, 2021**
  - Last post: **July 12, 2021**
  - Difference: **2 days**

- **User 661093**
  - First post: **July 8, 2021**
  - Last post: **July 29, 2021**
  - Difference: **21 days**

- **User 004239** posted only **once**, so they are **not included in the output**.

---

## Notes

- The dataset used for testing may differ from the example shown.
- The example is provided only to illustrate the expected output format.
