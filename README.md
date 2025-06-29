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

---

## 🧪 MySQL Assertions & SQL Functions Cheat Sheet

### 1. Assertions in MySQL

MySQL does not support the `ASSERT` keyword directly, but you can enforce data integrity using constraints:

- **NOT NULL**: Ensures a column cannot have NULL value.
  ```sql
  CREATE TABLE users (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
  );
  ```

- **UNIQUE**: Ensures all values in a column are unique.
  ```sql
  CREATE TABLE users (
    email VARCHAR(100) UNIQUE
  );
  ```

- **CHECK**: Ensures a column value meets a specific condition (MySQL 8+).
  ```sql
  CREATE TABLE products (
    price DECIMAL(10,2),
    CHECK (price > 0)
  );
  ```

- **PRIMARY KEY**: Uniquely identifies each record.
  ```sql
  CREATE TABLE orders (
    order_id INT PRIMARY KEY
  );
  ```

- **FOREIGN KEY**: Ensures referential integrity between tables.
  ```sql
  CREATE TABLE orders (
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES users(id)
  );
  ```

---

### 2. Common SQL Functions with Examples

#### String Functions

- **CONCAT**: Combine strings.
  ```sql
  SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM users;
  ```

- **UPPER / LOWER**: Change case.
  ```sql
  SELECT UPPER(name), LOWER(name) FROM users;
  ```

- **SUBSTRING**: Extract part of a string.
  ```sql
  SELECT SUBSTRING(name, 1, 3) FROM users;
  ```

- **REPLACE**: Replace substring.
  ```sql
  SELECT REPLACE('hello world', 'world', 'MySQL');
  ```

#### Numeric Functions

- **ROUND**: Round a number.
  ```sql
  SELECT ROUND(123.456, 2); -- 123.46
  ```

- **CEIL / FLOOR**: Ceiling and floor.
  ```sql
  SELECT CEIL(1.2), FLOOR(1.8); -- 2, 1
  ```

- **ABS**: Absolute value.
  ```sql
  SELECT ABS(-10); -- 10
  ```

#### Date & Time Functions

- **NOW()**: Current date and time.
  ```sql
  SELECT NOW();
  ```

- **CURDATE() / CURTIME()**: Current date or time.
  ```sql
  SELECT CURDATE(), CURTIME();
  ```

- **DATE_ADD / DATE_SUB**: Add or subtract intervals.
  ```sql
  SELECT DATE_ADD('2024-01-01', INTERVAL 7 DAY);
  SELECT DATE_SUB('2024-01-01', INTERVAL 1 MONTH);
  ```

- **DATEDIFF**: Difference in days.
  ```sql
  SELECT DATEDIFF('2024-01-10', '2024-01-01'); -- 9
  ```

#### Aggregate Functions

- **COUNT**: Number of rows.
  ```sql
  SELECT COUNT(*) FROM users;
  ```

- **SUM / AVG / MIN / MAX**: Sum, average, min, max.
  ```sql
  SELECT SUM(salary), AVG(salary), MIN(salary), MAX(salary) FROM employees;
  ```

- **GROUP BY**: Group rows.
  ```sql
  SELECT department, COUNT(*) FROM employees GROUP BY department;
  ```

- **HAVING**: Filter groups.
  ```sql
  SELECT department, COUNT(*) FROM employees GROUP BY department HAVING COUNT(*) > 5;
  ```

#### Conditional Functions

- **IF**: Simple conditional.
  ```sql
  SELECT name, IF(salary > 5000, 'High', 'Low') AS salary_level FROM employees;
  ```

- **CASE**: Multiple conditions.
  ```sql
  SELECT name,
    CASE
      WHEN salary > 8000 THEN 'Very High'
      WHEN salary > 5000 THEN 'High'
      ELSE 'Low'
    END AS salary_band
  FROM employees;
  ```

#### Null Handling

- **IFNULL / COALESCE**: Replace NULLs.
  ```sql
  SELECT IFNULL(phone, 'N/A') FROM users;
  SELECT COALESCE(phone, email, 'N/A') FROM users;
  ```

#### Mathematical Functions

- **MOD**: Modulo.
  ```sql
  SELECT MOD(10, 3); -- 1
  ```

- **POWER**: Exponentiation.
  ```sql
  SELECT POWER(2, 3); -- 8
  ```

#### Other Useful Functions

- **DISTINCT**: Unique values.
  ```sql
  SELECT DISTINCT department FROM employees;
  ```

- **LIMIT**: Restrict number of rows.
  ```sql
  SELECT * FROM employees LIMIT 5;
  ```

- **ORDER BY**: Sort results.
  ```sql
  SELECT * FROM employees ORDER BY salary DESC;
  ```

---

## 📝 Tip

Practice these assertions and functions with real queries to master SQL for interviews!