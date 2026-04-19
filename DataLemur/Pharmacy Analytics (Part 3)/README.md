# 💊 Total Drug Sales by Manufacturer

## 📌 Problem Statement
CVS Health wants to analyze pharmacy sales performance across manufacturers.

Write a SQL query to:

- Calculate the **total drug sales for each manufacturer**
- **Round the total to the nearest million**
- Format the result as:

> **"$X million"**

- Sort results:
  - By **total sales (descending)**
  - If tied → sort **alphabetically by manufacturer**

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
| 94 | 132362 | 2041758.41 | 1373721.70 | Biogen | UP and UP |
| 9 | 37410 | 293452.54 | 208876.01 | Eli Lilly | Zyprexa |
| 50 | 90484 | 2521023.73 | 2742445.9 | Eli Lilly | Dermasorb |
| 61 | 77023 | 500101.61 | 419174.97 | Biogen | Varicose Relief |
| 136 | 144814 | 1084258.00 | 1006447.73 | Biogen | Burkhart |

---

## ✅ Expected Output

| manufacturer | sale |
|--------------|------|
| Biogen | $4 million |
| Eli Lilly | $3 million |

---

## 💡 Explanation

### **Biogen**
```text
2,041,758.41
+ 500,101.61
+ 1,084,258.00
= 3,626,118.02 ≈ 4 million
```

### **Eli Lilly**
```text
293,452.54
+ 2,521,023.73
= 2,814,476.27 ≈ 3 million
```

---

## 🧠 Approach
- Group by **manufacturer**
- Compute total sales using **SUM(total_sales)**
- Convert to millions:
  - Divide by **1,000,000**
  - Round using **ROUND()**
- Format output using **CONCAT()**
- Sort based on:
  - Rounded values (**descending**)
  - Manufacturer name (**ascending**)

---

## 🚀 Key Concepts
- Aggregation (**SUM**)  
- Group By  
- Rounding (**ROUND**)  
- String Formatting (**CONCAT**)  
- Multi-level Sorting  

---
= 3,626,118.02 ≈ 4 million
