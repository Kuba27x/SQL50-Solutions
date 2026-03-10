-- Problem 1683. Invalid Tweets
-- Link: https://leetcode.com/problems/invalid-tweets/
-- Difficulty: Easy

SELECT tweet_id 
FROM tweets 
WHERE LENGTH(content) > 15