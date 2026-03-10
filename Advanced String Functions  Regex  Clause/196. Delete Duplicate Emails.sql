-- Problem 196. Delete Duplicate Emails
-- Link: https://leetcode.com/problems/delete-duplicate-emails/
-- Difficulty: Easy

DELETE
FROM person
WHERE Id NOT IN
(SELECT minid
FROM (SELECT email, min(id) as minid
FROM Person
GROUP BY email) t)