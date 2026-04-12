# 📱 TikTok Second-Day Sign-Up Confirmation

## 📌 Problem Statement
Assume you're given tables containing information about TikTok user sign-ups and confirmation text messages.

When users sign up using their email addresses, they receive text confirmations to activate their account.

Your task is to identify the **user IDs of users who did NOT confirm their sign-up on the first day but confirmed on the second day**.

---

## 📝 Definition
- **action_date** refers to the date when users activated their accounts and confirmed sign-up via text message.

---

## 📊 Table Schema: `emails`

| Column Name | Type     |
|------------|----------|
| email_id   | integer  |
| user_id    | integer  |
| signup_date| datetime |

---

## 🧾 Example Input

| email_id | user_id | signup_date          |
|---------|--------|----------------------|
| 125     | 7771   | 06/14/2022 00:00:00  |
| 433     | 1052   | 07/09/2022 00:00:00  |

---

## 📊 Table Schema: `texts`

| Column Name   | Type                                |
|--------------|-------------------------------------|
| text_id      | integer                             |
| email_id     | integer                             |
| signup_action| string ('Confirmed', 'Not Confirmed') |
| action_date  | datetime                            |

---

## 🧾 Example Input

| text_id | email_id | signup_action   | action_date          |
|--------|---------|----------------|----------------------|
| 6878   | 125     | Confirmed      | 06/14/2022 00:00:00  |
| 6997   | 433     | Not Confirmed  | 07/09/2022 00:00:00  |
| 7000   | 433     | Confirmed      | 07/10/2022 00:00:00  |

---

## ✅ Expected Output

| user_id |
|--------|
| 1052   |

---

## 💡 Explanation
### **User 7771**
- Signed up on **06/14/2022**
- Confirmed on the **same day**
- ❌ Not included

### **User 1052**
- Signed up on **07/09/2022**
- Did **not confirm** on signup day
- Confirmed on **07/10/2022** (second day)
- ✅ Included in result

---

## 🧠 Approach
- Join `emails` and `texts` using `email_id`
- Compare `signup_date` with `action_date`
- Identify users:
  - Who were **not confirmed on Day 1**
  - But **confirmed exactly on Day 2**

---

## 🚀 Key Concepts
- Table Joins  
- Date Comparison  
- Filtering Rows  
- Business Logic Conditions  

---
