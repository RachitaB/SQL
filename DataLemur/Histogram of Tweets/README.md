# Tweets Histogram (SQL Problem)

## Problem Statement

Assume you're given a table containing **Twitter tweet data**. Write a query to obtain a **histogram of tweets posted per user in 2022**.

Your task is to:

- Count how many tweets each user posted in **2022**.
- Group users based on their tweet counts.
- Return the number of users in each tweet-count bucket.

In other words, **group users by the number of tweets they posted in 2022 and count how many users fall into each group.**

---

## Table Schema

### `tweets` Table

| Column Name | Type |
|-------------|------|
| tweet_id | integer |
| user_id | integer |
| msg | string |
| tweet_date | timestamp |

---

## Example Input

| tweet_id | user_id | msg | tweet_date |
|----------|--------|-----|------------|
| 214252 | 111 | Am considering taking Tesla private at $420. Funding secured. | 12/30/2021 00:00:00 |
| 739252 | 111 | Despite the constant negative press covfefe | 01/01/2022 00:00:00 |
| 846402 | 111 | Following @NickSinghTech on Twitter changed my life! | 02/14/2022 00:00:00 |
| 241425 | 254 | If the salary is so competitive why won’t you tell me what it is? | 03/01/2022 00:00:00 |
| 231574 | 148 | I no longer have a manager. I can't be managed | 03/23/2022 00:00:00 |

---

## Expected Output

| tweet_bucket | users_num |
|--------------|-----------|
| 1 | 2 |
| 2 | 1 |

---

## Explanation

- **Two users** posted **1 tweet** in 2022.
- **One user** posted **2 tweets** in 2022.

The query should:

1. Count tweets per user in **2022**
2. Group users by their tweet counts
3. Count how many users fall into each group

---

## Notes

- The dataset used for testing may contain **different data**.
- The example above is only to illustrate the expected behavior of the query.
