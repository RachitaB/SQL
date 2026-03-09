# Tesla Unfinished Parts Assembly (SQL Problem)

## Problem Statement

Tesla is investigating **production bottlenecks** and needs to identify which parts have **started the assembly process but have not yet been completed**.

Write a SQL query to determine which parts are **currently unfinished** in the assembly process.

---

## Assumptions

- The `parts_assembly` table contains **all parts currently in production**, each at different stages of the assembly process.
- An **unfinished part** is defined as a record where the **`finish_date` is NULL**.
- The problem requires a simple approach to identify such parts.

---

## Table Schema

### `parts_assembly`

| Column Name | Type |
|-------------|------|
| part | string |
| finish_date | datetime |
| assembly_step | integer |

---

## Example Input

| part | finish_date | assembly_step |
|-----|-------------|--------------|
| battery | 01/22/2022 00:00:00 | 1 |
| battery | 02/22/2022 00:00:00 | 2 |
| battery | 03/22/2022 00:00:00 | 3 |
| bumper | 01/22/2022 00:00:00 | 1 |
| bumper | 02/22/2022 00:00:00 | 2 |
| bumper | NULL | 3 |
| bumper | NULL | 4 |

---

## Expected Output

| part | assembly_step |
|-----|---------------|
| bumper | 3 |
| bumper | 4 |

---

## Explanation

- The **battery** part has all assembly steps completed with a valid `finish_date`.
- The **bumper** part has assembly steps **3 and 4 without a finish date**, meaning those steps are still unfinished.
- Therefore, only those records appear in the output.

---

## Notes

- The dataset used for evaluation may differ from the example shown.
- The example is provided only to illustrate the expected output format.
