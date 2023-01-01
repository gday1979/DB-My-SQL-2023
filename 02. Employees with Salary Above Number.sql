CREATE PROC usp_GetEmployeesSalaryAboveNumber (@inputSalary DECIMAL(18,4))
AS
SELECT FirstName,LastName
  FROM Employees
  WHERE Salary >=@inputSalary