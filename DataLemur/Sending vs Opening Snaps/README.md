# 👻 Snapchat Time Spent Breakdown by Age Group

## 📌 Problem Statement
Given Snapchat user activity data and age group information, calculate the percentage breakdown of time spent:

- **Sending snaps**
- **Opening snaps**

Group the results by **age bucket** and round percentages to **2 decimal places**.

---

## 📝 Percentage Formula

Calculate:

- **Send Percentage**

> **(Time Spent Sending / Total Send + Open Time) × 100.0**

- **Open Percentage**

> **(Time Spent Opening / Total Send + Open Time) × 100.0**

### ⚠️ Important Note
To avoid integer division:

> Multiply by **100.0**, not **100**

---

## 📊 Table Schema: `activities`

| Column Name | Type |
|------------|------|
| activity_id | integer |
| user_id | integer |
| activity_type | string ('send', 'open', 'chat') |
| time_spent | float |
| activity_date | datetime |

---

## 🧾 Example Input

| activity_id | user_id | activity_type | time_spent | activity_date |
|------------|--------|--------------|-----------|--------------|
| 7274 | 123 | open | 4.50 | 06/22/2022 12:00:00 |
| 2425 | 123 | send | 3.50 | 06/22/2022 12:00:00 |
| 1413 | 456 | send | 5.67 | 06/23/2022 12:00:00 |
| 1414 | 789 | chat | 11.00 | 06/25/2022 12:00:00 |
| 2536 | 456 | open | 3.00 | 06/25/2022 12:00:00 |

---

## 📊 Table Schema: `age_breakdown`

| Column Name | Type |
|------------|------|
| user_id | integer |
| age_bucket | string |

---

## 🧾 Example Input

| user_id | age_bucket |
|--------|-----------|
| 123 | 31-35 |
| 456 | 26-30 |
| 789 | 21-25 |

---

## ✅ Expected Output

| age_bucket | send_perc | open_perc |
|-----------|----------|----------|
| 26-30 | 65.40 | 34.60 |
| 31-35 | 43.75 | 56.25 |

---

## 💡 Explanation

### **Age Bucket 26–30**
- Time Sending = **5.67**
- Time Opening = **3.00**

Total Relevant Time:

```text
5.67 + 3.00 = 8.67
