SELECT name, marks
FROM Students
WHERE marks = (SELECT MAX(marks) FROM Students);
SELECT s1.name, s1.marks
FROM Students s1
WHERE s1.marks > (
    SELECT AVG(s2.marks)
    FROM Students s2
);
SELECT emp_name
FROM employee
WHERE dept_id IN (
    SELECT dept_id
    FROM Department
);
SELECT name
FROM students
WHERE marks = (
    SELECT MAX(marks)
    FROM students
);
SELECT emp_name
FROM employee s
WHERE EXISTS (
    SELECT 1
    FROM Department d
    WHERE d.dept_id = s.dept_id
);





