-- Problem 1789. Primary Department for Each Employee
-- Link: https://leetcode.com/problems/primary-department-for-each-employee/
-- Difficulty: Easy

SELECT employee_id,
CASE 
WHEN COUNT(employee_id)=1 THEN department_id
WHEN COUNT(employee_id)>1 THEN MAX(CASE WHEN primary_flag = 'Y' THEN department_id END) 
END AS department_id
FROM Employee
GROUP BY employee_id
