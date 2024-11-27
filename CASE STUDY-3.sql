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

INSERT INTO