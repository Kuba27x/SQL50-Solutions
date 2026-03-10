-- Problem 180. Consecutive Numbers
-- Link: https://leetcode.com/problems/consecutive-numbers/
-- Difficulty: Medium

WITH cons AS 
(
    SELECT num,
    LEAD(num) OVER(ORDER BY id) AS next,
    LAG(num) OVER(ORDER BY id) AS previous
    FROM logs
)
SELECT DISTINCT num AS ConsecutiveNums FROM cons
WHERE num=next AND num=previous