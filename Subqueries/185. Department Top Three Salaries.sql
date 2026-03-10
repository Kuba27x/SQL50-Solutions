-- Problem 185. Department Top Three Salaries
-- Link: https://leetcode.com/problems/department-top-three-salaries/
-- Difficulty: Hard

WITH ranked_salaries AS
(
    SELECT *,
    DENSE_RANK() OVER(PARTITION BY departmentId ORDER BY salary DESC) AS rnk
    FROM employee
)
SELECT d.name AS Department, r.name AS Employee, r.salary AS Salary
FROM ranked_salaries r
JOIN department d
ON r.departmentId = d.id
WHERE rnk <= 3 


