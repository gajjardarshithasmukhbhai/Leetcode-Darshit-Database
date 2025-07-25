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

## 🔑 MySQL Key Concepts

### 1. Primary Key

- **Definition:** A column (or set of columns) that uniquely identifies each row in a table.
- **Properties:** Cannot be NULL, must be unique.
- **Example:**
  ```sql
  CREATE TABLE users (
    id INT PRIMARY KEY,
    name VARCHAR(100)
  );
  ```
  Here, `id` is the primary key.

### 2. Composite Key

- **Definition:** A primary key made up of two or more columns to uniquely identify a row.
- **Example:**
  ```sql
  CREATE TABLE enrollments (
    student_id INT,
    course_id INT,
    PRIMARY KEY (student_id, course_id)
  );
  ```
  Here, the combination of `student_id` and `course_id` uniquely identifies each enrollment.

### 3. Unique Key

- **Definition:** Ensures all values in a column (or set of columns) are unique across the table.
- **Allows NULLs:** Yes (except for primary key).
- **Example:**
  ```sql
  CREATE TABLE employees (
    email VARCHAR(100) UNIQUE
  );
  ```

### 4. Foreign Key

- **Definition:** A column (or set of columns) that establishes a link between data in two tables.
- **Enforces:** Referential integrity.
- **Example:**
  ```sql
  CREATE TABLE orders (
    id INT PRIMARY KEY,
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES users(id)
  );
  ```

### 5. Candidate Key

- **Definition:** Any column or set of columns that can qualify as a unique key in the database. There can be multiple candidate keys in a table, but only one primary key.
- **Example:** In a `users` table, both `email` and `username` could be candidate keys.

### 6. Alternate Key

- **Definition:** Candidate keys that are not chosen as the primary key.
- **Example:** If `email` is not the primary key but is unique, it is an alternate key.

### 7. Super Key

- **Definition:** Any combination of columns that uniquely identifies a row. All candidate keys are super keys, but not all super keys are candidate keys.

---

## ⚡ ACID Properties in SQL Databases

ACID stands for:

1. **Atomicity**
   - Each transaction is all or nothing. If any part fails, the whole transaction fails and the database is unchanged.
   - *Example:* Transferring money between accounts: both debit and credit must succeed or neither.

2. **Consistency**
   - A transaction brings the database from one valid state to another, maintaining all rules (constraints, cascades, triggers).
   - *Example:* Foreign key constraints are always enforced.

3. **Isolation**
   - Concurrent transactions do not interfere with each other. Intermediate results are invisible to other transactions.
   - *Example:* Two users updating the same data won't see each other's changes until committed.

4. **Durability**
   - Once a transaction is committed, it will remain so, even in the event of a system failure.
   - *Example:* After a successful transfer, the changes persist even if the server crashes.

---

## 📚 MySQL Clauses Cheat Sheet

### 1. SELECT
- Used to select data from a database.
  ```sql
  SELECT name, age FROM users;
  ```

### 2. FROM
- Specifies the table to select or delete data from.
  ```sql
  SELECT * FROM employees;
  ```

### 3. WHERE
- Filters records that fulfill a specified condition.
  ```sql
  SELECT * FROM orders WHERE amount > 100;
  ```

### 4. GROUP BY
- Groups rows that have the same values in specified columns.
  ```sql
  SELECT department, COUNT(*) FROM employees GROUP BY department;
  ```

### 5. HAVING
- Filters groups created by GROUP BY.
  ```sql
  SELECT department, COUNT(*) FROM employees GROUP BY department HAVING COUNT(*) > 5;
  ```

### 6. ORDER BY
- Sorts the result set in ascending or descending order.
  ```sql
  SELECT * FROM employees ORDER BY salary DESC;
  ```

### 7. LIMIT
- Specifies the number of records to return.
  ```sql
  SELECT * FROM products LIMIT 10;
  ```

### 8. DISTINCT
- Returns only distinct (different) values.
  ```sql
  SELECT DISTINCT city FROM customers;
  ```

### 9. JOIN (INNER, LEFT, RIGHT, FULL)
- Combines rows from two or more tables.
  ```sql
  SELECT a.name, b.salary FROM a INNER JOIN b ON a.id = b.a_id;
  ```

### 10. UNION / UNION ALL
- Combines the result set of two or more SELECT statements.
  ```sql
  SELECT city FROM customers
  UNION
  SELECT city FROM suppliers;
  ```

### 11. IN
- Checks if a value matches any value in a list or subquery.
  ```sql
  SELECT * FROM users WHERE country IN ('India', 'USA');
  ```

### 12. BETWEEN
- Selects values within a given range.
  ```sql
  SELECT * FROM products WHERE price BETWEEN 10 AND 50;
  ```

### 13. LIKE
- Searches for a specified pattern in a column.
  ```sql
  SELECT * FROM users WHERE name LIKE 'A%';
  ```

### 14. IS NULL / IS NOT NULL
- Checks for (non-)NULL values.
  ```sql
  SELECT * FROM employees WHERE manager_id IS NULL;
  ```

### 15. EXISTS
- Checks for the existence of any record in a subquery.
  ```sql
  SELECT name FROM customers WHERE EXISTS (SELECT 1 FROM orders WHERE customers.id = orders.customer_id);
  ```

### 16. ALIAS (AS)
- Gives a table or a column a temporary name.
  ```sql
  SELECT name AS employee_name FROM employees;
  ```

---

## 🪟 MySQL Window Functions Cheat Sheet

Window functions perform calculations across a set of table rows related to the current row. They use the `OVER()` clause.

### 1. ROW_NUMBER()
- Assigns a unique sequential integer to rows within a partition.
  ```sql
  SELECT name, salary,
    ROW_NUMBER() OVER (ORDER BY salary DESC) AS rank
  FROM employees;
  ```

### 2. RANK()
- Similar to ROW_NUMBER, but rows with equal values receive the same rank, with gaps.
  ```sql
  SELECT name, salary,
    RANK() OVER (ORDER BY salary DESC) AS rank
  FROM employees;
  ```

### 3. DENSE_RANK()
- Like RANK, but no gaps in ranking values.
  ```sql
  SELECT name, salary,
    DENSE_RANK() OVER (ORDER BY salary DESC) AS dense_rank
  FROM employees;
  ```

### 4. NTILE(n)
- Divides rows into n buckets and assigns a bucket number.
  ```sql
  SELECT name, salary,
    NTILE(4) OVER (ORDER BY salary DESC) AS quartile
  FROM employees;
  ```

### 5. LEAD()
- Returns data from the next row in the window.
  ```sql
  SELECT name, salary,
    LEAD(salary) OVER (ORDER BY salary) AS next_salary
  FROM employees;
  ```

### 6. LAG()
- Returns data from the previous row in the window.
  ```sql
  SELECT name, salary,
    LAG(salary) OVER (ORDER BY salary) AS prev_salary
  FROM employees;
  ```

### 7. FIRST_VALUE()
- Returns the first value in the window frame.
  ```sql
  SELECT name, salary,
    FIRST_VALUE(salary) OVER (ORDER BY salary DESC) AS highest_salary
  FROM employees;
  ```

### 8. LAST_VALUE()
- Returns the last value in the window frame.
  ```sql
  SELECT name, salary,
    LAST_VALUE(salary) OVER (ORDER BY salary DESC
      ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS lowest_salary
  FROM employees;
  ```

### 9. Aggregate Functions with OVER()

- **SUM, AVG, MIN, MAX, COUNT** can be used as window functions.
  ```sql
  SELECT name, salary,
    SUM(salary) OVER (PARTITION BY department) AS dept_total_salary
  FROM employees;
  ```

### 10. PARTITION BY

- Divides the result set into partitions to which the window function is applied.
  ```sql
  SELECT name, department, salary,
    RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS dept_rank
  FROM employees;
  ```

---

## 📝 Tip

Practice these assertions and functions with real queries to master SQL for interviews!