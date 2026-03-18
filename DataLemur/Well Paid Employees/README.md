# 🧑‍💼 Employees Earning More Than Their Managers(FAANG)

## 📌 Problem Statement
Companies often perform salary analyses to ensure fair compensation practices. One useful analysis is to check if there are any employees earning more than their direct managers.

As an HR Analyst, your task is to identify all employees who earn more than their direct managers.

---

## 📊 Table Schema: `employee`

| Column Name    | Type    | Description                          |
|----------------|---------|--------------------------------------|
| employee_id    | integer | Unique ID of the employee            |
| name           | string  | Name of the employee                 |
| salary         | integer | Salary of the employee               |
| department_id  | integer | Department ID of the employee        |
| manager_id     | integer | Manager ID of the employee           |

---

## 🧾 Example Input

| employee_id | name              | salary | department_id | manager_id |
|-------------|-------------------|--------|---------------|------------|
| 1           | Emma Thompson     | 3800   | 1             | 6          |
| 2           | Daniel Rodriguez  | 2230   | 1             | 7          |
| 3           | Olivia Smith      | 7000   | 1             | 8          |
| 4           | Noah Johnson      | 6800   | 2             | 9          |
| 5           | Sophia Martinez   | 1750   | 1             | 11         |
| 6           | Liam Brown        | 13000  | 3             | NULL       |
| 7           | Ava Garcia        | 12500  | 3             | NULL       |
| 8           | William Davis     | 6800   | 2             | NULL       |

---

## ✅ Expected Output

| employee_id | employee_name |
|-------------|----------------|
| 3           | Olivia Smith   |

---

## 💡 Explanation
Olivia Smith earns **$7000**, which is greater than her manager William Davis's salary of **$6800**, so she is included in the result.

---

## 🧠 Approach
- Perform a **self join** on the `employee` table.
- Match employees with their managers using `manager_id = employee_id`.
- Compare employee salary with manager salary.
- Select employees where employee salary > manager salary.

---

## 🧾 SQL Solution

```sql
SELECT 
    e.employee_id,
    e.name AS employee_name
FROM employee e
JOIN employee m
    ON e.manager_id = m.employee_id
WHERE e.salary > m.salary;
