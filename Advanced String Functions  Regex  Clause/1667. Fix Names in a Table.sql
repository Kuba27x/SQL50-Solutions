-- Problem 1667. Fix Names in a Table
-- Link: https://leetcode.com/problems/fix-names-in-a-table/
-- Difficulty: Easy

SELECT user_id, CONCAT(UPPER(LEFT(name,1)), LOWER(SUBSTRING(name, 2))) AS name
FROM users
ORDER BY user_id