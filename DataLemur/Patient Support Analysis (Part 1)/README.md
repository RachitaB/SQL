# 📞 UHG Policy Holders with 3+ Calls

## 📌 Problem Statement
UnitedHealth Group (UHG) wants to analyze its **Advocate4Me** program usage.

Write a query to find:

> The number of **policy holders** who made **three or more calls**

### Notes
- Each call is uniquely identified by **case_id**
- Count calls per **policy_holder_id**
- Return the **total number of such policy holders**

---

## 📊 Table Schema: `callers`

| Column Name           | Type      |
|----------------------|----------|
| policy_holder_id     | integer  |
| case_id              | varchar  |
| call_category        | varchar  |
| call_date            | timestamp|
| call_duration_secs   | integer  |

---

## 🧾 Example Input

| policy_holder_id | case_id | call_category | call_date | call_duration_secs |
|------------------|--------|--------------|-----------|--------------------|
| 1 | f1d012f9 | emergency assistance | 2023-04-13 | 144 |
| 1 | 41ce8fb6 | authorisation | 2023-05-25 | 815 |
| 2 | 9b1af84b | claims assistance | 2023-01-26 | 992 |
| 2 | 8471a3d4 | emergency assistance | 2023-03-09 | 128 |
| 2 | 38208fae | benefits | 2023-06-05 | 619 |

---

## ✅ Expected Output

| policy_holder_count |
|---------------------|
| 1 |

---

## 💡 Explanation
- **Policy Holder 1** → 2 calls ❌ (less than 3)  
- **Policy Holder 2** → 3 calls ✅  

Thus, only **1 policy holder** satisfies the condition.

---

## 🧠 Approach
- Group data by **policy_holder_id**
- Count number of calls using **COUNT(case_id)**
- Filter policy holders with **≥ 3 calls**
- Count how many such policy holders exist

---

## 🚀 Key Concepts
- Group By  
- Aggregation (`COUNT`)  
- Filtering (`HAVING`)  
- Subqueries / Derived Results  

---
