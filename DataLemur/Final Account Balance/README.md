# 💰 Final Account Balance Calculation

## 📌 Problem Statement
Given a table containing information about bank deposits and withdrawals made using PayPal, write a query to retrieve the **final account balance for each account**, taking into account all recorded transactions.

Assume there are **no missing transactions**.

---

## 📊 Table Schema: `transactions`

| Column Name       | Type    |
|-------------------|---------|
| transaction_id    | integer |
| account_id        | integer |
| amount            | decimal |
| transaction_type  | varchar |

---

## 🧾 Example Input

| transaction_id | account_id | amount | transaction_type |
|----------------|------------|--------|------------------|
| 123            | 101        | 10.00  | Deposit          |
| 124            | 101        | 20.00  | Deposit          |
| 125            | 101        | 5.00   | Withdrawal       |
| 126            | 201        | 20.00  | Deposit          |
| 128            | 201        | 10.00  | Withdrawal       |

---

## ✅ Expected Output

| account_id | final_balance |
|------------|---------------|
| 101        | 25.00         |
| 201        | 10.00         |

---

## 💡 Explanation
For **Account ID 101**:
- Total Deposits = **10.00 + 20.00 = 30.00**
- Total Withdrawals = **5.00**
- Final Balance = **30.00 - 5.00 = 25.00**

For **Account ID 201**:
- Total Deposits = **20.00**
- Total Withdrawals = **10.00**
- Final Balance = **20.00 - 10.00 = 10.00**

---

## 🧠 Approach
- Group transactions by `account_id`
- Use conditional aggregation:
  - Add amounts for **Deposits**
  - Subtract amounts for **Withdrawals**
- Calculate net balance per account

---
