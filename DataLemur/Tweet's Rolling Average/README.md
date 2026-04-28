# 🐦 3-Day Rolling Average of Tweets

## 📌 Problem Statement
Given a table of tweet data over a time period, calculate the **3-day rolling average of tweets for each user**.

Return:

- **user_id**
- **tweet_date**
- **rolling_avg_3d** (rounded to **2 decimal places**)

---

## 📝 Notes
- A **rolling average (moving average)** is used to analyze trends over time  
- For each day, calculate the average of:
  - Current day  
  - Previous 2 days (if available)  

---

## 📊 Table Schema: `tweets`

| Column Name | Type      |
|------------|----------|
| user_id    | integer  |
| tweet_date | timestamp|
| tweet_count| integer  |

---

## 🧾 Example Input

| user_id | tweet_date           | tweet_count |
|--------|----------------------|-------------|
| 111    | 06/01/2022 00:00:00  | 2 |
| 111    | 06/02/2022 00:00:00  | 1 |
| 111    | 06/03/2022 00:00:00  | 3 |
| 111    | 06/04/2022 00:00:00  | 4 |
| 111    | 06/05/2022 00:00:00  | 5 |

---

## ✅ Expected Output

| user_id | tweet_date           | rolling_avg_3d |
|--------|----------------------|----------------|
| 111    | 06/01/2022 00:00:00  | 2.00 |
| 111    | 06/02/2022 00:00:00  | 1.50 |
| 111    | 06/03/2022 00:00:00  | 2.00 |
| 111    | 06/04/2022 00:00:00  | 2.67 |
| 111    | 06/05/2022 00:00:00  | 4.00 |

---

## 💡 Explanation

- **Day 1** → Only 1 value → `2 / 1 = 2.00`  
- **Day 2** → (2 + 1) / 2 = `1.50`  
- **Day 3** → (2 + 1 + 3) / 3 = `2.00`  
- **Day 4** → (1 + 3 + 4) / 3 = `2.67`  
- **Day 5** → (3 + 4 + 5) / 3 = `4.00`  

---

## 🧠 Approach
- Partition data by **user_id**
- Sort by **tweet_date**
- Use a **sliding window of 3 days**
- Compute average of:
  - Current row  
  - Previous 2 rows  
- Round result to **2 decimal places**

---

## 🚀 Key Concepts
- Window Functions  
- Rolling Average  
- Time-Series Analysis  
- Partitioning  
- Ordering  

---

> ⚠️ Note: The dataset used for testing may differ from the example above.
