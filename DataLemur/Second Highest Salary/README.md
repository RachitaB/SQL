# 💼 Second Highest Employee Salary

## 📌 Problem Statement
As an HR analyst, your task is to determine the **second highest salary** among all employees.

### Important Notes
- Multiple employees may have the **same salary**
- If duplicates exist, display the salary **only once**
- Return the **second highest distinct salary**

---

## 📊 Table Schema: `employee`

| Column Name | Type | Description |
|------------|------|-------------|
| employee_id | integer | Unique ID of employee |
| name | string | Employee name |
| salary | integer | Employee salary |
| department_id | integer | Department ID |
| manager_id | integer | Manager ID |

---

## 🧾 Example Input

| employee_id | name | salary | department_id | manager_id |
|-----------|------|-------|--------------|-----------|
| 1 | Emma Thompson | 3800 | 1 | 6 |
| 2 | Daniel Rodriguez | 2230 | 1 | 7 |
| 3 | Olivia Smith | 2000 | 1 | 8 |

---

## ✅ Expected Output

| second_highest_salary |
|----------------------|
| 2230 |

---

## 💡 Explanation
The salaries in descending order are:

```text
3800, 2230, 2000
