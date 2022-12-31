﻿SELECT TOP(10) [FirstTable].[FirstName], [FirstTable].[LastName], [FirstTable].[DepartmentID]
FROM [Employees][FirstTable]
LEFT JOIN (SELECT [DepartmentID], AVG([Salary])[AvgSalary]
					  FROM [Employees] 
					  GROUP BY [DepartmentID])[SecondTable]
		  ON [FirstTable].[DepartmentID] = [SecondTable].[DepartmentID]
WHERE [Salary] > [AvgSalary]
ORDER BY [FirstTable].[DepartmentID]