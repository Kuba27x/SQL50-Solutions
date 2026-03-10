-- Problem 550. Game Play Analysis IV
-- Link: https://leetcode.com/problems/game-play-analysis-iv/
-- Difficulty: Medium

WITH helper AS
(
SELECT *, 
LEAD(event_date) OVER(PARTITION BY player_id ORDER BY event_date)
AS next_login,
RANK() OVER(PARTITION BY player_id ORDER BY event_date) AS rnk
FROM activity
)
SELECT ROUND(SUM(CASE WHEN rnk = 1 AND DATEDIFF(next_login, event_date) = 1 THEN 1 ELSE 0 END)/(SELECT COUNT(DISTINCT player_id) FROM activity),2) AS fraction
FROM helper