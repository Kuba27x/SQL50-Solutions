-- Problem 1341. Movie Rating
-- Link: https://leetcode.com/problems/movie-rating/
-- Difficulty: Medium

(SELECT name AS results
FROM movierating m
JOIN users u
ON m.user_id = u.user_id
GROUP BY m.user_id
ORDER BY COUNT(rating) DESC, name ASC
LIMIT 1)

UNION ALL 

(SELECT title
FROM movies m 
JOIN movierating mr 
ON m.movie_id = mr.movie_id 
WHERE YEAR(created_at) = 2020 AND MONTH(created_at) = 2
GROUP BY mr.movie_id
ORDER BY AVG(rating) DESC, title ASC
LIMIT 1)