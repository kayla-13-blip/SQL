CREATE TABLE Employees(
      employee_id INT,
      name VARCHAR(50),
      department VARCHAR(50),
      salary INT);
SELECT SUM(salary) AS total_salary
FROM Employees;
SELECT AVG(salary) AS  average_salary
FROM Employees;
SELECT COUNT(DISTINCT department) AS total_departments
FROM Employees;
SELECT MIN(salary) AS minimum_salary
FROM Employees;
SELECT MAX(salary) AS maximum_salary
FROM Employees;

