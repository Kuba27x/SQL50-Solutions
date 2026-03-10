-- Problem 620. Not Boring Movies
-- Link: https://leetcode.com/problems/not-boring-movies/
-- Difficulty: Easy

SELECT * FROM cinema
WHERE id % 2 != 0 AND description != 'boring'
ORDER BY rating DESC

