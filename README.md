<h1 align="center">🚀 Database LeetCode Problems - MySQL Madness Of Darshit💾</h1>

<p align="center">
  <img src="https://img.shields.io/badge/Level-Up%20SQL-🔥%20MySQL%20Mastery-blueviolet?style=for-the-badge" />
  <img src="https://img.shields.io/badge/Problems%20Solved-100%2B-success?style=for-the-badge&logo=leetcode" />
  <img src="https://img.shields.io/badge/Made%20with-%F0%9F%92%BB%20Love%20%26%20Joins-yellow?style=for-the-badge" />
</p>

<p align="center">
  <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/mysql/mysql-original-wordmark.svg" alt="mysql" width="120" />
</p>

---

## 📌 About This Repo

Welcome to the **SQL Warzone**, where every line of code is a bullet toward clean data!

This repository is a collection of 📚 **hand-picked, solved LeetCode Database Problems** using **MySQL**. From beginner joins to advanced window functions — if it’s data-related, it’s here.

🧠 Think of it as the **Netflix of SQL** — but for recruiters, it's the **IMDB Top 100 of MySQL problems!**

---

## ⚒️ Technologies Used

- 🐬 **Darshit ❤️ MySQL**
- 🧪 LeetCode SQL Sandbox
- 🧠 Clean problem-solving mindset
- 💼 Real-world schema intuition

---

## 🧩 Problem Categories

| Category | Description | Link |
|----------|-------------|------|
| 🟢 Easy   | Simple SELECTs, Filtering, Sorting | [Easy Problems](./Easy) |
| 🟡 Medium | Joins, Aggregates, Subqueries | [Medium Problems](./Medium) |
| 🔴 Hard   | Window Functions, Ranking, Performance Optimization | [Hard Problems](./Hard) |

---

## 🧠 Sample Problem Showcase

### 176. Second Highest Salary  
```sql
SELECT MAX(Salary) AS SecondHighestSalary
FROM Employee
WHERE Salary < (SELECT MAX(Salary) FROM Employee);
```