-- Problem 1907. Count Salary Categories
-- Link: https://leetcode.com/problems/count-salary-categories/
-- Difficulty: Medium

SELECT 'Low Salary' AS category, COUNT(*) AS accounts_count FROM Accounts WHERE income < 20000
UNION
SELECT 'Average Salary' AS category, COUNT(*) AS accounts_count FROM Accounts WHERE income BETWEEN 20000 AND 50000
UNION 
SELECT 'High Salary' AS category, COUNT(*) AS accounts_count FROm
Accounts WHERE income > 50000