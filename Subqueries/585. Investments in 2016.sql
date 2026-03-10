-- Problem 585. Investments in 2016
-- Link: https://leetcode.com/problems/investments-in-2016/
-- Difficulty: Medium

WITH Stats AS (
    SELECT 
        tiv_2016,
        COUNT(*) OVER(PARTITION BY tiv_2015) as tiv_count,
        COUNT(*) OVER(PARTITION BY lat, lon) as loc_count
    FROM insurance
)
SELECT ROUND(SUM(tiv_2016),2) AS tiv_2016
FROM stats
WHERE loc_count = 1
AND tiv_count > 1