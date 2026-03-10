-- Problem 1731. The Number of Employees Which Report to Each Employee
-- Link: https://leetcode.com/problems/the-number-of-employees-which-report-to-each-employee/
-- Difficulty: Easy

WITH reports AS
(
    SELECT *, 
    COUNT(reports_to) AS reports_count, 
    ROUND(AVG(age)) AS average_age FROM employees 
    GROUP BY reports_to
    HAVING COUNT(reports_to)>=1
)
SELECT e.employee_id, e.name, r.reports_count, r.average_age  
FROM reports r
JOIN employees e
ON r.reports_to = e.employee_id
ORDER BY e.employee_id