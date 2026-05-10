DROP TABLE IF EXISTS Company;
CREATE TABLE Company;
USE Company;
CREATE TABLE Employees (
    Emp_ID INT PRIMARY KEY,
    Emp_Name VARCHAR(50),
    Department VARCHAR(50),
    Salary INT,
    Age INT
);
INSERT INTO Employees
VALUES
(1, 'Harsh', 'HR', 45000, 25),
(2, 'Aman', 'IT', 60000, 30),
(3, 'Riya', 'Finance', 55000, 28),
(4, 'Karan', 'IT', 70000, 35),
(5, 'Sneha', 'HR', 50000, 26);
SELECT * FROM Employees;
SELECT * FROM Employees
WHERE Salary > 50000;
SELECT * FROM Employees
ORDER BY Salary DESC;
UPDATE Employees
SET Salary = 65000
WHERE Emp_ID = 2;
DELETE FROM Employees
WHERE Emp_ID = 5;
SELECT * FROM Employees;