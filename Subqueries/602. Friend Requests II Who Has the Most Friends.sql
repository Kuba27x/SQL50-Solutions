-- Problem 602. Friend Requests II: Who Has the Most Friends
-- Link: https://leetcode.com/problems/friend-requests-ii-who-has-the-most-friends/
-- Difficulty: Medium

WITH friends AS
(
    (SELECT requester_id AS friends FROM requestaccepted)
    UNION ALL
    (SELECT accepter_id AS friends FROM requestaccepted)
)
SELECT friends AS id, COUNT(*) AS num
FROM friends 
GROUP BY friends
ORDER BY num DESC
LIMIT 1
