# SQL Bootcamp

Практический проект по SQL и работе с реляционными базами данных.

В рамках проекта решались задачи по написанию SQL-запросов разного уровня сложности: от базовых выборок до JOIN, CTE, оконных функций, агрегирования и работы с бизнес-логикой через SQL.

---

## Tech Stack

- SQL
- PostgreSQL
- DBeaver / psql
- Relational Databases

---

## Topics Covered

### Basic Queries

- SELECT
- WHERE
- ORDER BY
- LIMIT
- DISTINCT

---

### Filtering & Aggregation

- GROUP BY
- HAVING
- COUNT
- SUM
- AVG
- MIN / MAX

---

### JOINs

- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- FULL JOIN
- SELF JOIN

---

### Subqueries

- correlated subqueries
- nested queries
- EXISTS / NOT EXISTS
- IN / NOT IN

---

### Common Table Expressions (CTE)

```sql
WITH cte_name AS (
    SELECT ...
)
SELECT * FROM cte_name;
```

---

### Window Functions

- ROW_NUMBER()
- RANK()
- DENSE_RANK()
- PARTITION BY
- OVER()

---

### Set Operations

- UNION
- UNION ALL
- INTERSECT
- EXCEPT

---

### Data Modification

- INSERT
- UPDATE
- DELETE

---

## Project Structure

```bash
SQL_Bootcamp/
├── day00/
├── day01/
├── day02/
├── day03/
├── day04/
├── day05/
├── day06/
├── day07/
├── day08/
├── day09/
```

Каждый модуль содержит отдельный набор SQL задач.

---

## Example Queries

### Aggregation example

```sql
SELECT department,
       COUNT(*) as employees_count
FROM employees
GROUP BY department;
```

---

### Join example

```sql
SELECT c.name, o.order_date
FROM customers c
JOIN orders o
ON c.id = o.customer_id;
```

---

### Window function example

```sql
SELECT name,
       salary,
       RANK() OVER (ORDER BY salary DESC)
FROM employees;
```

---

## What I Practiced

В рамках проекта прокачал:

- написание сложных SQL-запросов
- работу с PostgreSQL
- оптимизацию запросов
- анализ данных через SQL
- работу с оконными функциями
- построение сложной бизнес-логики в SQL

---

## Run Locally

```bash
git clone https://github.com/your_username/sql-bootcamp.git
cd sql-bootcamp
```

Запуск SQL-файлов:

```bash
psql -U username -d database_name -f script.sql
```
