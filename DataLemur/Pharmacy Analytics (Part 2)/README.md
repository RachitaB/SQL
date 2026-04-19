# 💊 Pharmacy Loss Analysis by Manufacturer

## 📌 Problem Statement
CVS Health wants to analyze pharmacy sales to identify **loss-making drugs**.

Write a SQL query to:

- Identify **manufacturers** whose drugs resulted in **losses**
- Calculate:
  - **Number of loss-making drugs** per manufacturer  
  - **Total loss incurred** (in absolute value)

### Notes
- A **loss occurs when**:  
  > **cogs > total_sales**
- Each drug belongs to **one manufacturer only**
- Sort results:
  - By **total loss (descending)**

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
| 156 | 89514 | 3130097.00 | 3427421.73 | Biogen | Acyclovir |
| 25 | 222331 | 2753546.00 | 2974975.36 | AbbVie | Lamivudine and Zidovudine |
| 50 | 90484 | 2521023.73 | 2742445.90 | Eli Lilly | Dermasorb TA Complete Kit |
| 98 | 110746 | 813188.82 | 140422.87 | Biogen | Medi-Chord |

---

## ✅ Expected Output

| manufacturer | drug_count | total_loss |
|--------------|-----------|------------|
| Biogen | 1 | 297324.73 |
| AbbVie | 1 | 221429.36 |
| Eli Lilly | 1 | 221422.17 |

---

## 💡 Explanation

### Loss Calculation
For each loss-making drug:

```text
Loss = cogs - total_sales
```

## 💡 Explanation

### **Biogen (Acyclovir)**
```text
3427421.73 - 3130097.00 = 297324.73
```

- **Medi-Chord** is excluded because it is **profitable** (no loss)

---

## 🧠 Approach
- Filter rows where **cogs > total_sales**
- Calculate loss per row:
  - **cogs - total_sales**
- Group by **manufacturer**
- Compute:
  - Count of drugs → `COUNT(*)`
  - Total loss → `SUM(cogs - total_sales)`
- Sort by **total loss (descending)**

---

## 🚀 Key Concepts
- Filtering (**WHERE**)  
- Aggregation (**SUM, COUNT**)  
- Group By  
- Arithmetic Calculations  
- Sorting  

---
