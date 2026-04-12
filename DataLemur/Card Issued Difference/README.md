# 💳 Credit Card Issuance Difference Analysis

## 📌 Problem Statement
Your team at JPMorgan Chase is preparing to launch a new credit card and wants insights into historical issuance patterns.

The task is to determine:

- The **difference in number of issued cards** between:
  - the **highest issuance month**
  - and the **lowest issuance month**
- For **each credit card**
- Sort the output by the **largest difference first**

---

## 📊 Table Schema: `monthly_cards_issued`

| Column Name   | Type    |
|-------------|--------|
| card_name    | string |
| issued_amount| integer |
| issue_month  | integer |
| issue_year   | integer |

---

## 🧾 Example Input

| card_name | issued_amount | issue_month | issue_year |
|----------|--------------|------------|-----------|
| Chase Freedom Flex | 55000 | 1 | 2021 |
| Chase Freedom Flex | 60000 | 2 | 2021 |
| Chase Freedom Flex | 65000 | 3 | 2021 |
| Chase Freedom Flex | 70000 | 4 | 2021 |
| Chase Sapphire Reserve | 170000 | 1 | 2021 |
| Chase Sapphire Reserve | 175000 | 2 | 2021 |
| Chase Sapphire Reserve | 180000 | 3 | 2021 |

---

## ✅ Expected Output

| card_name | difference |
|----------|-----------|
| Chase Freedom Flex | 15000 |
| Chase Sapphire Reserve | 10000 |

---

## 💡 Explanation

### **Chase Freedom Flex**
- Highest issuance = **70,000**
- Lowest issuance = **55,000**

Difference:

> **70,000 - 55,000 = 15,000**

---

### **Chase Sapphire Reserve**
- Highest issuance = **180,000**
- Lowest issuance = **170,000**

Difference:

> **180,000 - 170,000 = 10,000**

---

## 🧠 Approach
- Group data by **card name**
- Find:
  - Maximum issued amount
  - Minimum issued amount
- Subtract minimum from maximum
- Sort by difference descending

---

## 🚀 Key Concepts
- Aggregate Functions  
- MAX / MIN  
- GROUP BY  
- Sorting Results  
- Business Performance Analysis  

---
