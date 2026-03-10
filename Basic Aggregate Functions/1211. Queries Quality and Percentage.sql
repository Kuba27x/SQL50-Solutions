-- Problem 1211. Queries Quality and Percentage
-- Link: https://leetcode.com/problems/queries-quality-and-percentage/
-- Difficulty: Easy

SELECT query_name,
ROUND((SUM(rating/position)/COUNT(rating)),2) AS quality,
ROUND((SUM(rating<3)*100/COUNT(rating)),2) AS poor_query_percentage
FROM queries
GROUP BY query_name
