-- Create the view with multiple SELECTs
CREATE VIEW StudentPerformance AS
SELECT student_id, name, marks, 'Above 80' AS performance
FROM Students
WHERE marks > 80

UNION ALL

SELECT student_id, name, marks, 'Between 50 and 80' AS performance
FROM Students
WHERE marks BETWEEN 50 AND 80

UNION ALL

SELECT student_id, name, marks, 'Below 50' AS performance
FROM Students
WHERE marks < 50;
SELECT * FROM StudentPerformance;

-- 5. Create the user
CREATE USER 'public_user'@'%' IDENTIFIED BY 'password123';

-- 6. Grant access ONLY to the view
GRANT SELECT ON studentdb.StudentPerformance TO 'public_user'@'%';
SELECT * FROM StudentPerformance;














