-- Select the database
USE StudentDB;

-- Create the Students table
CREATE TABLE Students (
    student_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    email TEXT,
    phone TEXT,
    marks INTEGER DEFAULT 0,
    attendance_percent REAL,
    address TEXT
);


-- INSERT statements (including NULL/defaults and partial values)
INSERT INTO Students (student_id, name, email, phone, marks, attendance_percent, address)
VALUES (1, 'Arun', 'arun@example.com', '9876543210', 85, 92.5, 'Chennai');

INSERT INTO Students (student_id, name, email, phone, marks)
VALUES (2, 'Divya', 'divya@example.com', NULL, 76);  -- Phone is NULL

INSERT INTO Students (student_id, name, email, marks, attendance_percent)
VALUES (3, 'Rahul', NULL, 67, 81.0);  -- Email is NULL

INSERT INTO Students (student_id, name)
VALUES (4, 'Priya');  -- Partial insert, uses DEFAULT and NULLs

-- SELECT to verify
SELECT * FROM Students;
SELECT name FROM students WHERE attendance_percent = 81;
SELECT name FROM students
WHERE marks > 80 AND attendance_percent > 75;
SELECT name FROM students
WHERE name LIKE '%a';
SELECT name FROM students
WHERE marks BETWEEN 75 AND 85;
select student_id from students order by marks;