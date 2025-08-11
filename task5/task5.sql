create table employee(emp_id INT PRIMARY KEY,emp_name TEXT,dept_id INT);
create table department(dept_id int primary key,dept_name TEXT);
insert into employee values(101,"john",1);
insert into employee values(102,"sarah",2);
insert into employee values(103,"mike",3);
insert into employee values(104,"emma",4);
insert into department values(1,"HR");
insert into department values(2,"developer");
insert into department values(3,"cloud engineer");
insert into department values(4,"tester");

select employee.emp_id,employee.emp_name,department.dept_name from employee left join department on employee.dept_id=department.dept_id;
select employee.emp_id,employee.emp_name,department.dept_name from employee right join department on employee.dept_id=department.dept_id;

DROP TABLE IF EXISTS department;

CREATE TABLE department(
    dept_id INT PRIMARY KEY,
    dept_name TEXT
);

-- Insert correct department data
INSERT INTO department VALUES (1, 'HR');
INSERT INTO department VALUES (2, 'developer');
INSERT INTO department VALUES (3, 'cloud engineer');
INSERT INTO department VALUES (4, 'tester');

-- Now run the join
SELECT e.emp_id, e.emp_name, d.dept_name
FROM employee e
INNER JOIN department d
    ON e.dept_id = d.dept_id;
-- FULL JOIN in MySQL using UNION
SELECT e.emp_id, e.emp_name, d.dept_name
FROM employee e
LEFT JOIN department d
ON e.dept_id = d.dept_id
UNION
SELECT e.emp_id, e.emp_name, d.dept_name
FROM employee e
RIGHT JOIN department d
ON e.dept_id = d.dept_id;

    
