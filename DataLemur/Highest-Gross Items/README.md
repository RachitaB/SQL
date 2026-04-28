# 🛒 Top 2 Highest-Grossing Products per Category (2022)

## 📌 Problem Statement
You are given transaction data of Amazon customers across different product categories.

Write a query to:

- Identify the **top 2 highest-grossing products** within each category  
- Consider only transactions from **year 2022**  
- Return:
  - **category**
  - **product**
  - **total_spend**

---

## 📊 Table Schema: `product_spend`

| Column Name       | Type      |
|------------------|----------|
| category         | string   |
| product          | string   |
| user_id          | integer  |
| spend            | decimal  |
| transaction_date | timestamp|

---

## 🧾 Example Input

| category | product | user_id | spend | transaction_date |
|----------|---------|--------|-------|------------------|
| appliance | refrigerator | 165 | 246.00 | 12/26/2021 |
| appliance | refrigerator | 123 | 299.99 | 03/02/2022 |
| appliance | washing machine | 123 | 219.80 | 03/02/2022 |
| electronics | vacuum | 178 | 152.00 | 04/05/2022 |
| electronics | wireless headset | 156 | 249.90 | 07/08/2022 |
| electronics | vacuum | 145 | 189.00 | 07/15/2022 |

---

## ✅ Expected Output

| category | product | total_spend |
|----------|---------|-------------|
| appliance | refrigerator | 299.99 |
| appliance | washing machine | 219.80 |
| electronics | vacuum | 341.00 |
| electronics | wireless headset | 249.90 |

---

## 💡 Explanation

### Appliance Category
- **Refrigerator** → 299.99  
- **Washing Machine** → 219.80  

Top 2 selected based on highest total spend.

---

### Electronics Category
- **Vacuum** → 152.00 + 189.00 = 341.00  
- **Wireless Headset** → 249.90  

Top 2 selected based on highest total spend.

---

## 🧠 Approach
- Filter transactions for **year = 2022**
- Group by:
  - **category**
  - **product**
- Compute:
  - `SUM(spend)` → total spend per product
- Rank products within each category
- Select **top 2 products per category**

---

## 🚀 Key Concepts
- Filtering (`WHERE`)  
- Aggregation (`SUM`)  
- Group By  
- Window Functions (`RANK / DENSE_RANK`)  
- Partitioning  

---
