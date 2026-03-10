-- Problem 1527. Patients With a Condition
-- Link: https://leetcode.com/problems/patients-with-a-condition/
-- Difficulty: Easy

SELECT patient_id, patient_name, conditions
FROM patients
WHERE conditions LIKE 'DIAB1%' 
OR conditions LIKE '% DIAB1%'

