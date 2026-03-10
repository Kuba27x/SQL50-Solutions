-- Problem 1075. Project Employees I
-- Link: https://leetcode.com/problems/project-employees-i/
-- Difficulty: Easy

SELECT project_id, ROUND(AVG(experience_years),2) AS average_years
FROM project p
JOIN employee e
ON p.employee_id = e.employee_id
GROUP BY project_id

