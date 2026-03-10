-- Problem 1321. Restaurant Growth
-- Link: https://leetcode.com/problems/restaurant-growth/
-- Difficulty: Medium

SELECT 
visited_on,
SUM(amount) OVER (ORDER BY visited_on ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS amount,
ROUND(AVG(amount) OVER (ORDER BY visited_on ROWS BETWEEN 6 PRECEDING AND CURRENT ROW), 2) AS average_amount
FROM (SELECT visited_on, SUM(amount) AS amount FROM customer GROUP BY visited_on) t
ORDER BY visited_on
LIMIT 1000 OFFSET 6
