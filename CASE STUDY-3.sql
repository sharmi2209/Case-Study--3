CREATE DATABASE studentDB;
USE studentDB;

CREATE TABLE student (id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(50) NOT NULL, age INT NOT NULL, email VARCHAR(50)NOT NULL UNIQUE);

INSERT INTO student (name, age,email) VALUES
('Gomathi',22,'goms@123'),
('Pavithra',24,'pavi@123'),
('Divya',20,'dd@123'),
('Sharmi',23,'ammu@123'),
('Diya',25,'diya@123');

SELECT * FROM student;

CREATE TABLE courses (id INT PRIMARY KEY AUTO_INCREMENT, name VARCHAR(50) NOT NULL);

INSERT INTO  courses (name) VALUES
('IT'),
('EEE'),
('ECE'),
('MECH');

SELECT * FROM  courses;

CREATE TABLE Enrollments (student_id INT,course_id INT,grade CHAR(1) ,PRIMARY KEY (student_id, course_id),
FOREIGN KEY (student_id) REFERENCES Student(id),FOREIGN KEY (course_id) REFERENCES Courses(id));

INSERT INTO Enrollments (student_id,course_id,grade) VALUES
(1, 3, 'A'),
(2, 2, 'B'),
(3, 4, 'D'),
(4, 1, 'B'),
(5, 2, 'A');

SELECT * FROM  Enrollments;

-- List all students --

SELECT * FROM student;

-- List all courses --

SELECT * FROM  courses;

 -- Show the names of students and the courses they are enrolled in --

SELECT student.name AS stu_name ,courses.name AS course_name FROM student JOIN Enrollments ON student.id= Enrollments.student_id
JOIN Courses  ON Enrollments.Course_id = Courses.id;

-- Count the number of students in each course --

SELECT  Courses.name as courses_name,COUNT(Enrollments.student_id) FROM Courses LEFT JOIN 
Enrollments ON Courses.id = Enrollments.course_id GROUP BY Courses.id;



