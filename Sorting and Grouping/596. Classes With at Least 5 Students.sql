-- Problem 596. Classes With at Least 5 Students
-- Link: https://leetcode.com/problems/classes-with-at-least-5-students/
-- Difficulty: Easy

SELECT class
FROM courses
GROUP BY class
HAVING COUNT(class) >= 5