# 💊 Top 3 Most Profitable Drugs

## 📌 Problem Statement
CVS Health wants to analyze pharmacy sales performance to identify the **most profitable drugs**.

Write a query to:

- Find the **top 3 most profitable drugs**
- Calculate the **total profit** for each drug
- Display results from **highest to lowest profit**

---

## 📝 Definition

> **Total Profit = Total Sales - Cost of Goods Sold (cogs)**

---

## 📊 Table Schema: `pharmacy_sales`

| Column Name  | Type    |
|-------------|--------|
| product_id  | integer |
| units_sold  | integer |
| total_sales | decimal |
| cogs        | decimal |
| manufacturer| varchar |
| drug        | varchar |

---

## 🧾 Example Input

| product_id | units_sold | total_sales | cogs | manufacturer | drug |
|-----------|-----------|-------------|------|--------------|------|
| 9 | 37410 | 293452.54 | 208876.01 | Eli Lilly | Zyprexa |
| 34 | 94698 | 600997.19 | 521182.16 | AstraZeneca | Surmontil |
| 61 | 77023 | 500101.61 | 419174.97 | Biogen | Varicose Relief |
| 136 | 144814 | 1084258 | 1006447.73 | Biogen | Burkhart |

---

## ✅ Expected Output

| drug | total_profit |
|------|--------------|
| Zyprexa | 84576.53 |
| Varicose Relief | 80926.64 |
| Surmontil | 79815.03 |

---

## 💡 Explanation

- **Zyprexa** generated the highest profit:
  ```text
  293452.54 - 208876.01 = 84576.53

  ### **Varicose Relief**
```text
500101.61 - 419174.97 = 80926.64
```

---

### **Surmontil**
```text
600997.19 - 521182.16 = 79815.03
```

---

## 🧠 Approach
- Calculate profit for each drug:
  - `total_sales - cogs`
- Sort drugs by profit in **descending order**
- Select the **top 3 results**

---

## 🚀 Key Concepts
- Arithmetic Calculations  
- Sorting  
- Ranking / Top-N Queries  
- Data Analysis  

---
