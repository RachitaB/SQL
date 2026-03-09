# Microsoft Teams Power Users (SQL Problem)

## Problem Statement

You are given a table containing **Microsoft Teams messages** sent between users.

Write a SQL query to identify the **top 2 Power Users** who sent the **highest number of messages in August 2022**.

### Requirements

- Count the number of messages sent by each user during **August 2022**.
- Return the **top 2 users** with the highest number of messages.
- Display:
  - `sender_id`
  - `message_count`
- Sort the results in **descending order of message count**.

---

## Assumptions

- No two users have sent the **same number of messages** in August 2022.

---

## Table Schema

### `messages`

| Column Name | Type |
|-------------|------|
| message_id | integer |
| sender_id | integer |
| receiver_id | integer |
| content | varchar |
| sent_date | datetime |

---

## Example Input

| message_id | sender_id | receiver_id | content | sent_date |
|------------|-----------|-------------|---------|-----------|
| 901 | 3601 | 4500 | You up? | 08/03/2022 00:00:00 |
| 902 | 4500 | 3601 | Only if you're buying | 08/03/2022 00:00:00 |
| 743 | 3601 | 8752 | Let's take this offline | 06/14/2022 00:00:00 |
| 922 | 3601 | 4500 | Get on the call | 08/10/2022 00:00:00 |

---

## Expected Output

| sender_id | message_count |
|-----------|---------------|
| 3601 | 2 |
| 4500 | 1 |

---

## Explanation

- **User 3601** sent **2 messages** in August 2022.
- **User 4500** sent **1 message** in August 2022.
- These two users have the **highest message counts**, making them the **top 2 power users**.

---

## SQL Solution

```sql
SELECT 
    sender_id,
    COUNT(message_id) AS message_count
FROM messages
WHERE EXTRACT(MONTH FROM sent_date) = 8
  AND EXTRACT(YEAR FROM sent_date) = 2022
GROUP BY sender_id
ORDER BY message_count DESC
LIMIT 2;
