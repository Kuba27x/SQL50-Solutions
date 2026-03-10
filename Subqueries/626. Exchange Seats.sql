-- Problem 626. Exchange Seats
-- Link: https://leetcode.com/problems/exchange-seats/
-- Difficulty: Medium

WITH helper AS
(
    SELECT id, student,
    LAG(student) OVER(ORDER BY id) AS previous,
    LEAD(student) OVER(ORDER BY id) AS next,
    MAX(id) OVER() AS last_student
    FROM seat
)
SELECT id,
CASE WHEN id % 2 != 0 AND id = last_student THEN student
WHEN id % 2 != 0 THEN next
ELSE previous
END AS student
FROM helper 


