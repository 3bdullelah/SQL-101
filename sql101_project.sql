-- create a schoole database 
CREATE DATABASE schoole;
-- use schoole database
USE schoole;
-- create student table
CREATE TABLE Student(
id INT PRIMARY KEY,
Student_name VARCHAR(255),
Student_BD DATE,
Student_sex CHAR(255),
Enroll_date DATE,
Student_email VARCHAR(255),
Student_level INT,
Student_path VARCHAR(255),
GPA INT
);
-- create teacher table
CREATE TABLE Teacher(
id INT PRIMARY KEY,
Teacher_name VARCHAR(255),
Teacher_BD DATE,
Gender CHAR(255),
Teacher_email VARCHAR(255),
Office_number INT
);
-- create subject table
CREATE TABLE Subjects(
id INT PRIMARY KEY,
Subject_name VARCHAR(255)
);
-- show tables
SHOW TABLES;
-- insert students values atleast 30 students
/* 
## For Date: YYYY-MM-DD
## For sex: M or F
## For Path: scientific or humanitarian
*/
INSERT INTO Student VALUES (1,"Ali Ahmed",2001-02-15,"M",2019-01-01,"Ali.Mohammed_Ahmed@email.com",4,"",95.7),(2,"Abdullah Khaled",2002-05-17,"M",2018-01-01,"Abdullah.Khaled@email.com");
-- insert teachers values atleast 10 teachers
INSERT INTO Teacher VALUES (1,"Khaled Ali", 1890-09-10,"M","Khaled.Ali@email.com",101),(2,"Abdulaziz Fahad", 1893-04-22,"M","Abdulaziz.Fahad@email.com",110);
-- insert Subjects values atleast 10 Subjects
INSERT INTO Subjects VALUES (1,"Mathematics"),(2,"Physics"),(3,"Chemistry"),(4,"Statistics"),(5,"History"),(6,"Geography"),(7,"Religious Education."),(8,"Law"),(9,"Sociology"),(10,"Psychology");
-- To View ALL Table values
SELECT * FROM Student;
SELECT * FROM Teacher;
SELECT * FROM Subjects;
-- sort the student values by acs
SELECT * FROM Student ORDER BY Student_name ASC;
-- view student name with proper column name
SELECT Student_name "Student Name" FROM Student;
-- To Update student email value 
UPDATE Student
SET Student_email = "Ali.Ahmed@email.com"
WHERE id =1;
-- To Update teasher office number 
UPDATE Teacher
SET Office_number = 102
WHERE id =2;
-- modify column name "Student_sex" to gender
ALTER TABLE Student_sex
RENAME TO Gender;