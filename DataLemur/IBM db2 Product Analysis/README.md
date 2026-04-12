# 📊 IBM Db2 Query Histogram Analysis

## 📌 Problem Statement
IBM is analyzing how employees utilize the **Db2 database** by tracking SQL queries executed by employees.

The objective is to generate data for a histogram that shows:

- The **number of unique queries run by employees** during **Q3 2023** (**July to September**)
- The **number of employees** who executed that many unique queries
- Including employees who **did not run any queries**

---

## 📝 Goal
Display:

- **unique_queries** → Number of distinct queries executed by an employee  
- **employee_count** → Number of employees who executed that many unique queries  

---

## 📊 Table Schema: `queries`

| Column Name      | Type     | Description |
|-----------------|----------|-------------|
| employee_id     | integer  | ID of employee who executed query |
| query_id        | integer  | Unique identifier for query |
| query_starttime | datetime | Timestamp when query started |
| execution_time  | integer  | Query execution duration in seconds |

---

## 🧾 Example Input

| employee_id | query_id | query_starttime       | execution_time |
|-----------|---------|----------------------|---------------|
| 226       | 856987  | 07/01/2023 01:04:43  | 2698 |
| 132       | 286115  | 07/01/2023 03:25:12  | 2705 |
| 221       | 33683   | 07/01/2023 04:34:38  | 91 |
| 240       | 17745   | 07/01/2023 14:33:47  | 2093 |
| 110       | 413477  | 07/02/2023 10:55:14  | 470 |

---

## 📊 Table Schema: `employees`

| Column Name | Type    | Description |
|------------|--------|-------------|
| employee_id | integer | Employee ID |
| full_name   | string  | Employee full name |
| gender      | string  | Employee gender |

---

## 🧾 Example Input

| employee_id | full_name         | gender |
|------------|------------------|--------|
| 1          | Judas Beardon    | Male   |
| 2          | Lainey Franciotti| Female |
| 3          | Ashbey Strahan   | Male   |

---

## ✅ Expected Output

| unique_queries | employee_count |
|---------------|---------------|
| 0             | 191 |
| 1             | 46  |
| 2             | 12  |
| 3             | 1   |

---

## 💡 Explanation
The output indicates:

- **191 employees** did not run any queries  
- **46 employees** ran exactly **1 unique query**  
- **12 employees** ran exactly **2 unique queries**  
- **1 employee** ran exactly **3 unique queries**

---

## 🧠 Approach
- Count distinct queries executed by each employee during **Q3 2023**
- Include employees with **zero queries**
- Group employees based on their total unique query count
- Aggregate into histogram format

---

## 🚀 Key Concepts
- Histogram Aggregation  
- Counting Distinct Values  
- Group By  
- Left Join  
- Handling Missing/Zero Values  

---
