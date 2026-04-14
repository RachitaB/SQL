# 🚕 Uber Third Transaction Analysis

## 📌 Problem Statement
Given a table of Uber transactions made by users, write a query to retrieve the **third transaction** of every user.

Return the following details:

- **user_id**
- **spend**
- **transaction_date**

---

## 📊 Table Schema: `transactions`

| Column Name | Type |
|------------|------|
| user_id | integer |
| spend | decimal |
| transaction_date | timestamp |

---

## 🧾 Example Input

| user_id | spend | transaction_date |
|--------|-------|------------------|
| 111 | 100.50 | 01/08/2022 12:00:00 |
| 111 | 55.00 | 01/10/2022 12:00:00 |
| 121 | 36.00 | 01/18/2022 12:00:00 |
| 145 | 24.99 | 01/26/2022 12:00:00 |
| 111 | 89.60 | 02/05/2022 12:00:00 |

---

## ✅ Expected Output

| user_id | spend | transaction_date |
|--------|-------|------------------|
| 111 | 89.60 | 02/05/2022 12:00:00 |

---

## 💡 Explanation
### **User 111 Transactions**
1. **100.50** → 01/08/2022  
2. **55.00** → 01/10/2022  
3. **89.60** → 02/05/2022 ✅  

Thus, the third transaction for **User 111** is returned.

---

## 🧠 Approach
- Sort transactions for each user by **transaction_date**
- Assign ranking/order to each transaction per user
- Filter only the **third transaction**
- Return required columns

---

## 🚀 Key Concepts
- Window Functions  
- Row Number Ranking  
- Partition By  
- Sorting / Ordering  
- SQL Filtering  

---
