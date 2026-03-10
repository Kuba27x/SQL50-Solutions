-- Problem 610. Triangle Judgement
-- Link: https://leetcode.com/problems/triangle-judgement/
-- Difficulty: Easy

SELECT x, y, z,
CASE WHEN x + y > z AND y + z > x AND z + x > y THEN 'Yes' ELSE 'No' END AS triangle
FROM triangle
