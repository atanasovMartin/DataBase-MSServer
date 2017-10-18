CREATE PROC usp_GetEmployeesSalaryAboveNumber (@number decimal(18,4))
AS 
SELECT FirstName, LastName FROM Employees
WHERE Salary >= @number