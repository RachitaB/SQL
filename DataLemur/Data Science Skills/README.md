# Data Science Skills Match (SQL Problem)

## Problem Statement

Given a table of candidates and their skills, you need to identify candidates who are best suited for an **open Data Science job**.

The job requires proficiency in the following skills:

- **Python**
- **Tableau**
- **PostgreSQL**

Write a SQL query to return the **candidate IDs** of candidates who possess **all three required skills**.

### Requirements

- Return only candidates who have **all required skills**.
- Sort the result by **candidate_id in ascending order**.

---

## Assumptions

- There are **no duplicate rows** in the `candidates` table.

---

## Table Schema

### `candidates` Table

| Column Name | Type |
|-------------|------|
| candidate_id | integer |
| skill | varchar |

---

## Example Input

| candidate_id | skill |
|--------------|-------|
| 123 | Python |
| 123 | Tableau |
| 123 | PostgreSQL |
| 234 | R |
| 234 | PowerBI |
| 234 | SQL Server |
| 345 | Python |
| 345 | Tableau |

---

## Expected Output

| candidate_id |
|--------------|
| 123 |

---

## Explanation

- **Candidate 123** has all required skills: **Python, Tableau, PostgreSQL**, so they are included in the result.
- **Candidate 345** has **Python and Tableau** but is missing **PostgreSQL**, so they are excluded.
- **Candidate 234** does not have any of the required skill combination.

---

## Notes

- The actual dataset used for testing may differ from the example.
- The example is only provided to illustrate the expected output format.
