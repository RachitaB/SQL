# 📈 App Click-Through Rate (CTR) Analysis

## 📌 Problem Statement
Assume you have an `events` table from Facebook app analytics. Write a query to calculate the **click-through rate (CTR)** for each app in **2022** and round the results to **2 decimal places**.

---

## 📝 Definition
**Click-Through Rate (CTR)** is calculated as:

> **CTR (%) = 100.0 × Number of Clicks / Number of Impressions**

### ⚠️ Important Note
To avoid integer division:
- Multiply by **100.0** instead of **100**

---

## 📊 Table Schema: `events`

| Column Name | Type     |
|------------|----------|
| app_id     | integer  |
| event_type | string   |
| timestamp  | datetime |

---

## 🧾 Example Input

| app_id | event_type | timestamp           |
|--------|------------|---------------------|
| 123    | impression | 07/18/2022 11:36:12 |
| 123    | impression | 07/18/2022 11:37:12 |
| 123    | click      | 07/18/2022 11:37:42 |
| 234    | impression | 07/18/2022 14:15:12 |
| 234    | click      | 07/18/2022 14:16:12 |

---

## ✅ Expected Output

| app_id | ctr    |
|--------|--------|
| 123    | 50.00  |
| 234    | 100.00 |

---

## 💡 Explanation
### **App 123**
- Total Impressions = **2**
- Total Clicks = **1**

CTR Calculation:

> **(1 / 2) × 100.0 = 50.00%**

---

### **App 234**
- Total Impressions = **1**
- Total Clicks = **1**

CTR Calculation:

> **(1 / 1) × 100.0 = 100.00%**

---

## 🧠 Approach
- Filter records for **year 2022**
- Count total **clicks** per app
- Count total **impressions** per app
- Apply CTR formula
- Round result to **2 decimal places**

---

## 🚀 Key Concepts
- Date Filtering  
- Aggregation  
- Conditional Counting  
- Percentage Calculation  
- Rounding Results  

---
