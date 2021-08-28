-- SQL-101
-- To create database
CREATE DATABASE company;
-- To show databases
SHOW DATABASES;
-- TO delete database
DROP DATABASE company;
-- ############################## --
/* 
Data Type
1- String:
	- CHAR(size) 0-255
	- VARCHAR(size) 0-65535
2- Numeric:
	- INT(size) 0 - 4294967295 or [-2147483648] - 2147483647
    - DOUBLE(size,d) 
3- Date/Time:
	- DATE
    - YEAR
*/
-- To use database
USE company;
-- To create table
CREATE TABLE Employee(
id INT PRIMARY KEY,
Employee_name VARCHAR(255),
Employee_salary INT,
Employee_bonus INT
);
-- To View ALL Table values
SELECT * FROM Employee;
-- To show column details
SHOW COLUMNS FROM Employee;
-- To insert a new column
ALTER TABLE Employee
ADD Employee_email VARCHAR(225);
-- To modify column 
ALTER TABLE Employee 
MODIFY COLUMN id CHAR(225);
-- To insert a new column
ALTER TABLE Employee
DROP COLUMN Employee_email;
-- To show tables
SHOW TABLES;
-- To rename Table
ALTER TABLE Dept
RENAME TO Department;
-- To delete a Table
DROP TABLE Department;
-- To insert values into table
INSERT INTO Employee (id, Employee_name, Employee_salary, Employee_bonus) VALUES (1,"ALI",50000,20000);
-- another way to insert more values in onece 
INSERT INTO Employee VALUES (1,"ALI",50000,35000),(2,"Abdullah",25000,10000),(3,"Fahad",35000,15000);
-- Use "WHERE" to filter the output
SELECT * FROM Employee WHERE Employee_name LIKE "ALI";
-- To Update value 
UPDATE Employee
SET Employee_bonus = 15000
WHERE id =2;
-- To sort the values in table
SELECT * FROM Employee ORDER BY Employee_name ASC;
SELECT * FROM Employee ORDER BY Employee_name DESC;
-- To delete value in table
DELETE FROM Employee WHERE id = 3;
-- To view values as GROUP
SELECT Employee_salary FROM Employee GROUP BY Employee_salary;









