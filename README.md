# Student Course Enrollment System

This project implements a simple **Student Course Enrollment Database** using MySQL. It consists of three main tables: `Student`, `Course`, and `Enrollment`. It also includes queries to insert sample data and retrieve student-course enrollment information.

## 📁 Database Name
`StudentDB`

---

## 📋 Tables Created

### 1. Student
Stores basic student information.
- `student_id` (Primary Key, Auto Increment)
- `name` (VARCHAR)
- `email` (VARCHAR)
- `phone` (VARCHAR)

### 2. Course
Stores course details.
- `course_id` (Primary Key, Auto Increment)
- `course_name` (VARCHAR)
- `fees` (DECIMAL)

### 3. Enrollment
Stores the enrollment records linking students and courses.
- `enroll_id` (Primary Key, Auto Increment)
- `student_id` (Foreign Key → Student.student_id)
- `course_id` (Foreign Key → Course.course_id)
- `enroll_date` (DATE)

---

## 🗃 Sample Data Inserted

### Students
- Anjali R
- Ravi K
- Meena S

### Courses
- Python Programming
- Web Development
- Data Structures

### Enrollments
- Anjali enrolled in Python Programming and Web Development
- Ravi enrolled in Data Structures
- Meena enrolled in Python Programming

---

## 🔍 Sample Queries

### View all students:
```sql
SELECT * FROM Student;
