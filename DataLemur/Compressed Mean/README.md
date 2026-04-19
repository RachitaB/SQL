# 📊 Mean Number of Items per Order

## 📌 Problem Statement
You are given data from Alibaba orders, where:

- Each row represents a specific **item count per order**
- Along with the **number of orders** having that item count

Your task is to calculate:

> **The mean (average) number of items per order**, rounded to **1 decimal place**

---

## 📊 Table Schema: `items_per_order`

| Column Name        | Type    |
|------------------|--------|
| item_count        | integer |
| order_occurrences | integer |

---

## 🧾 Example Input

| item_count | order_occurrences |
|-----------|------------------|
| 1 | 500 |
| 2 | 1000 |
| 3 | 800 |
| 4 | 1000 |

---

## ✅ Expected Output

| mean |
|------|
| 2.7  |

---

## 💡 Explanation

### Step 1: Calculate Total Items

```text
(1 × 500) + (2 × 1000) + (3 × 800) + (4 × 1000)
= 500 + 2000 + 2400 + 4000
= 8900
```

---

### Step 2: Calculate Total Orders

```text
500 + 1000 + 800 + 1000 = 3300
```

---

### Step 3: Compute Mean

```text
Mean = Total Items / Total Orders
     = 8900 / 3300
     = 2.7
```

---

## 🧠 Approach
- Multiply each **item_count** with its **order_occurrences**
- Sum all values → Total Items  
- Sum all **order_occurrences** → Total Orders  
- Divide:
  - `Total Items / Total Orders`
- Round to **1 decimal place**

---

## 🚀 Key Concepts
- Weighted Average  
- Aggregation  
- Arithmetic Calculation  
- Data Interpretation  

---
