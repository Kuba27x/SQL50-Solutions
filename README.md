# 💻 LeetCode SQL 50 - Study Plan Solutions

My comprehensive solutions to the **SQL 50** study plan on LeetCode. This repository features optimized queries written in **MySQL**, organized by topic according to the LeetCode curriculum.

![LeetCode SQL 50 Badge](https://img.shields.io/badge/LeetCode-SQL--50-orange?style=for-the-badge&logo=leetcode)
![SQL Skill](https://img.shields.io/badge/Language-MySQL-blue?style=for-the-badge&logo=mysql)

## 📁 Project Structure

The solutions are categorized into folders based on the specific SQL concepts they address:

| Category | Focus Areas |
| :--- | :--- |
| **[Select](./Select/)** | Basic data retrieval and filtering (`WHERE`). |
| **[Basic Joins](./Basic%20Joins/)** | Relational mapping using `INNER`, `LEFT`, and `RIGHT JOIN`. |
| **[Basic Aggregate Functions](./Basic%20Aggregate%20Functions/)** | Data summarization (`COUNT`, `SUM`, `AVG`, `ROUND`). |
| **[Sorting and Grouping](./Sorting%20and%20Grouping/)** | Result organization (`GROUP BY`, `HAVING`) and ordering. |
| **[Advanced Select and Joins](./Advanced%20Select%20and%20Joins/)** | Complex joins, self-joins, and conditional logic (`CASE WHEN`). |
| **[Subqueries](./Subqueries/)** | Nested queries and Common Table Expressions (CTE). |
| **[Advanced String Functions / Regex](./Advanced%20String%20Functions%20Regex%20Clause/)** | String manipulation and pattern matching. |

---

## 💡 Key Technical Insights

Throughout this challenge, I have mastered the following advanced SQL techniques:

* **Window Functions**: Implementing `RANK()`, `DENSE_RANK()`, `LEAD()`, and `LAG()` for complex analytical tasks.
* **CTEs (Common Table Expressions)**: Writing clean, modular, and maintainable code using the `WITH` clause.
* **Complex Filtering**: Identifying duplicates or unique records using window-based counting (e.g., the *Insurance* problem).
* **Running Totals**: Calculating cumulative sums and weights (e.g., the *Last Person to Fit in the Bus* problem).
* **Performance Optimization**: Using set-based logic and efficient aggregation over procedural approaches.

---

## 🏆 Featured Solutions

| # | Problem | Key Concept | Link |
| :--- | :--- | :--- | :--- |
| 585 | Investments in 2016 | Window Functions & Filtering | [View Script](./Advanced%20Select%20and%20Joins/585.%20Investments%20in%202016.sql) |
| 185 | Department Top Three Salaries | Dense Rank & Partitioning | [View Script](./Subqueries/185.%20Department%20Top%20Three%20Salaries.sql) |
| 1204 | Last Person to Fit in the Bus | Running Totals (`SUM() OVER`) | [View Script](./Subqueries/1204.%20Last%20Person%20to%20Fit%20in%20the%20Bus.sql) |

---

## 🛠️ How to Use

All solutions have been verified on LeetCode and pass 100% of the test cases. To run these scripts locally:

1.  Ensure you have a **MySQL** environment set up (e.g., MySQL Workbench, DBeaver).
2.  Clone the repository:
    ```bash
    git clone [https://github.com/Kuba27x/SQL50-Solutions.git](https://github.com/Kuba27x/SQL50-Solutions.git)
    ```
