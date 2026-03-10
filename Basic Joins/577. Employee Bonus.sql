-- Problem 577. Employee Bonus
-- Link: https://leetcode.com/problems/employee-bonus/
-- Difficulty: Easy

SELECT e.name, b.bonus
FROM employee e 
LEFT JOIN bonus b
ON b.empid=e.empid
WHERE IFNULL(b.bonus,0) <1000