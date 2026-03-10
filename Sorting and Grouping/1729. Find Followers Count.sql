-- Problem 1729. Find Followers Count
-- Link: https://leetcode.com/problems/find-followers-count/
-- Difficulty: Easy

SELECT user_id, COUNT(*) AS followers_count
FROM followers
GROUP BY user_id
ORDER BY user_id 