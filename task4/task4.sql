SELECT AVG(marks) AS avg_marks
FROM Students;
select count(student_id) AS number_students
from students;
select sum(marks) As total from students;
select name ,avg(marks) As avg_marks from students group by name; 
SELECT name, AVG(marks) AS avg_marks
FROM Students
GROUP BY name 
HAVING AVG(marks) > 80;

