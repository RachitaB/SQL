# Laptop vs Mobile Viewership (SQL Problem)

## Problem Statement

You are given a table that records **user viewership categorized by device type**. The device types include:

- `laptop`
- `tablet`
- `phone`

Your task is to calculate:

- The **total number of laptop views**
- The **total number of mobile views**

### Definition

- **Mobile views** are defined as the **sum of views from `tablet` and `phone` devices**.

### Output Requirements

Return:

- `laptop_views` → total views from **laptop**
- `mobile_views` → total views from **tablet + phone**

---

## Table Schema

### `viewership`

| Column Name | Type |
|-------------|------|
| user_id | integer |
| device_type | string ('laptop', 'tablet', 'phone') |
| view_time | timestamp |

---

## Example Input

| user_id | device_type | view_time |
|--------|-------------|-----------|
| 123 | tablet | 01/02/2022 00:00:00 |
| 125 | laptop | 01/07/2022 00:00:00 |
| 128 | laptop | 02/09/2022 00:00:00 |
| 129 | phone | 02/09/2022 00:00:00 |
| 145 | tablet | 02/24/2022 00:00:00 |

---

## Expected Output

| laptop_views | mobile_views |
|--------------|--------------|
| 2 | 3 |

---

## Explanation

- There are **2 laptop views** in the dataset.
- There are **2 tablet views** and **1 phone view**.
- Since **mobile views = tablet + phone**, the total mobile views are **3**.

---

## Notes

- The dataset used during evaluation may differ from the example shown.
- The example is only provided to demonstrate the expected output format.
