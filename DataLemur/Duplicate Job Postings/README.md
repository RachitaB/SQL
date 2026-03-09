# Duplicate Job Listings (SQL Problem)

## Problem Statement

This problem is the same as **Problem #8 from the SQL Chapter of _Ace the Data Science Interview_**.

You are given a table containing **job postings from companies on LinkedIn**.

Write a SQL query to **count the number of companies that have posted duplicate job listings**.

---

## Definition

A **duplicate job listing** occurs when **two or more job postings within the same company** have:

- the **same job title**
- the **same job description**

---

## Table Schema

### `job_listings`

| Column Name | Type |
|-------------|------|
| job_id | integer |
| company_id | integer |
| title | string |
| description | string |

---

## Example Input

| job_id | company_id | title | description |
|------|------|------|------|
| 248 | 827 | Business Analyst | Business analyst evaluates past and current business data with the primary goal of improving decision-making processes within organizations. |
| 149 | 845 | Business Analyst | Business analyst evaluates past and current business data with the primary goal of improving decision-making processes within organizations. |
| 945 | 345 | Data Analyst | Data analyst reviews data to identify key insights into a business's customers and ways the data can be used to solve problems. |
| 164 | 345 | Data Analyst | Data analyst reviews data to identify key insights into a business's customers and ways the data can be used to solve problems. |
| 172 | 244 | Data Engineer | Data engineer works in a variety of settings to build systems that collect, manage, and convert raw data into usable information for data scientists and business analysts to interpret. |

---

## Expected Output

| duplicate_companies |
|---------------------|
| 1 |

---

## Explanation

- **Company 345** posted two job listings (**job_id 945 and 164**) with the **same title and description**.
- Therefore, it counts as a **duplicate job listing company**.
- Only **one company** in the dataset meets the duplicate criteria.

---

## SQL Solution

```sql
SELECT COUNT(DISTINCT company_id) AS duplicate_companies
FROM (
    SELECT company_id
    FROM job_listings
    GROUP BY company_id, title, description
    HAVING COUNT(*) > 1
) t;
