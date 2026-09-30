CREATE DATABASE P_db;
USE P_db;
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL UNIQUE
);
CREATE TABLE student (
    s_id INT PRIMARY KEY,
    s_name VARCHAR(50) NOT NULL,
    age INT,
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id));
    
INSERT INTO departments (dept_id, dept_name) VALUES
(101, 'Computer Science'),
(102, 'Information Technology'),
(103, 'Electronics'),
(104, 'Mechanical'),
(105, 'Civil');

SELECT * FROM student;

ALTER TABLE student ADD COLUMN email varchar(100);

INSERT INTO student (s_id, s_name, age, dept_id, email)
VALUES
(1, 'Saksham', 20, 101, 'saksham@gmail.com'),
(2, 'Priya', 21, 102, 'priya@gmail.com'),
(3, 'Aman', 20, 103, 'aman@gmail.com'),
(4, 'Neha', 22, 104, 'neha@gmail.com'),
(5, 'Rohit', 21, 105, 'rohit@gmail.com');
SELECT * FROM student;
SELECT * FROM student WHERE dept_id=101;
UPDATE student SET dept_id=105 WHERE s_id=3;
SET SQL_SAFE_UPDATES=0;
DELETE FROM student WHERE age<21;
SELECT * FROM student;