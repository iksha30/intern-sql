-- Create the database
CREATE DATABASE IF NOT EXISTS StudentDB;
USE StudentDB;

-- Create Student table
CREATE TABLE Student (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15)
);

-- Create Course table
CREATE TABLE Course (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100),
    fees DECIMAL(10, 2)
);

-- Create Enrollment table
CREATE TABLE Enrollment (
    enroll_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enroll_date DATE,
    FOREIGN KEY (student_id) REFERENCES Student(student_id),
    FOREIGN KEY (course_id) REFERENCES Course(course_id)
);

-- Insert sample data into Student
INSERT INTO Student (name, email, phone) VALUES
('Anjali R', 'anjali@email.com', '9876543210'),
('Ravi K', 'ravi@email.com', '9123456789'),
('Meena S', 'meena@email.com', '9001234567');

-- Insert sample data into Course
INSERT INTO Course (course_name, fees) VALUES
('Python Programming', 3000.00),
('Web Development', 4500.00),
('Data Structures', 4000.00);

-- Insert sample data into Enrollment
INSERT INTO Enrollment (student_id, course_id, enroll_date) VALUES
(1, 1, '2025-08-01'),
(1, 2, '2025-08-02'),
(2, 3, '2025-08-03'),
(3, 1, '2025-08-04');

-- View all students
SELECT * FROM Student;

-- View all courses
SELECT * FROM Course;

-- View all enrollments
SELECT * FROM Enrollment;

-- Join query: View full enrollment details with student and course info
SELECT 
    Enrollment.enroll_id,
    Student.name AS student_name,
    Course.course_name,
    Enrollment.enroll_date,
    Course.fees
FROM Enrollment
JOIN Student ON Enrollment.student_id = Student.student_id
JOIN Course ON Enrollment.course_id = Course.course_id;
