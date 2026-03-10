-- Problem 570. Managers with at Least 5 Direct Reports
-- Link: https://leetcode.com/problems/managers-with-at-least-5-direct-reports/
-- Difficulty: Medium

WITH report_num AS
(
    SELECT *, COUNT(*) AS reports 
    FROM employee
    GROUP BY managerId
    HAVING reports >= 5
)
SELECT e.name 
FROM employee e
JOIN report_num rn
ON e.id = rn.managerId