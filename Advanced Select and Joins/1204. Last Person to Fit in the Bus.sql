-- Problem 1204. Last Person to Fit in the Bus
-- Link: https://leetcode.com/problems/last-person-to-fit-in-the-bus/
-- Difficulty: Medium

WITH rolling_total AS
(
SELECT *,
SUM(weight) OVER(ORDER BY turn) AS Total_Weight
FROM queue
)
SELECT person_name FROM rolling_total
WHERE Total_Weight <= 1000
ORDER BY Total_Weight DESC
LIMIT 1

