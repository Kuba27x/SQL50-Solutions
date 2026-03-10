-- Problem 176. Second Highest Salary
-- Link: https://leetcode.com/problems/second-highest-salary/
-- Difficulty: Medium

WITH ranked AS(
    SELECT *,
    DENSE_RANK() OVER(ORDER BY salary DESC) AS rnk
    FROM employee
)
SELECT 
MAX(CASE WHEN rnk=2 THEN salary ELSE null END) AS SecondHighestSalary FROM ranked
