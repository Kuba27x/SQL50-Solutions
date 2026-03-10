-- Problem 619. Biggest Single Number
-- Link: https://leetcode.com/problems/biggest-single-number/
-- Difficulty: Easy

SELECT CASE WHEN COUNT(num) = 1 THEN num ELSE null END AS num
FROM mynumbers
GROUP BY num 
ORDER BY num DESC 
LIMIT 1


