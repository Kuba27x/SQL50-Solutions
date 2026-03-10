-- Problem 1280. Students and Examinations
-- Link: https://leetcode.com/problems/students-and-examinations/
-- Difficulty: Easy

WITH all_subs AS
(SELECT DISTINCT student_id, student_name, su.subject_name
FROM students s
CROSS JOIN subjects su
),
exams AS
(
    SELECT student_id, subject_name, COUNT(*) AS attended_exams
    FROM examinations
    GROUP BY student_id, subject_name
)
SELECT a.student_id, a.student_name, a.subject_name, IFNULL(attended_exams, 0) AS attended_exams
FROM all_subs a
LEFT JOIN exams e
ON a.student_id = e.student_id
AND a.subject_name = e.subject_name
GROUP BY a.student_id, a.subject_name
ORDER BY a.student_id, a.subject_name