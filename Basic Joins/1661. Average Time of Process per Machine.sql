-- Problem 1661. Average Time of Process per Machine
-- Link: https://leetcode.com/problems/average-time-of-process-per-machine/
-- Difficulty: Easy

SELECT 
    machine_id, 
    ROUND(AVG(diff), 3) AS processing_time
FROM (
    SELECT 
        machine_id, 
        process_id, 
        activity_type,
        LEAD(timestamp) OVER (PARTITION BY machine_id, process_id ORDER BY timestamp) - timestamp AS diff
    FROM Activity
) AS subquery
WHERE activity_type = 'start'
GROUP BY machine_id;