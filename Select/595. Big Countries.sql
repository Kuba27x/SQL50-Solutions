-- Problem 595. Big Countries
-- Link: https://leetcode.com/problems/big-countries/
-- Difficulty: Easy

SELECT name, population, area 
FROM world
WHERE area >= 3000000 OR population >= 25000000