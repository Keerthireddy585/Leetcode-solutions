-- LeetCode 1527: Patients With a Condition
-- Concept: WHERE Filtering + REGEXP_LIKE (Pattern Matching)

SELECT patient_id, patient_name, conditions
FROM Patients
WHERE REGEXP_LIKE(conditions, '(^| )DIAB1');
