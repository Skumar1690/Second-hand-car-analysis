
-- SQL Script: Create, Insert, Query, Update, and Delete example

-- 1. Create Table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(100),
    Salary DECIMAL(10, 2)
);

-- 2. Insert Data
INSERT INTO Employees (EmployeeID, FirstName, LastName, Department, Salary)
VALUES
(1, 'John', 'Doe', 'Engineering', 75000.00),
(2, 'Jane', 'Smith', 'Marketing', 60000.00),
(3, 'Michael', 'Johnson', 'HR', 58000.00),
(4, 'Alice', 'Brown', 'Finance', 68000.00);

-- 3. Select all records
SELECT * FROM Employees;

-- 4. Select employees with Salary greater than 60,000
SELECT FirstName, LastName, Department, Salary
FROM Employees
WHERE Salary > 60000;

-- 5. Update salary for a specific employee
UPDATE Employees
SET Salary = 80000.00
WHERE EmployeeID = 1;

-- 6. Delete a specific employee record
DELETE FROM Employees
WHERE EmployeeID = 3;
