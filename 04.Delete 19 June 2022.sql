﻿DELETE FROM Volunteers
WHERE DepartmentId IN (SELECT Id 
						FROM VolunteersDepartments 
						WHERE DepartmentName = 'Education program assistant')

DELETE FROM VolunteersDepartments 
WHERE DepartmentName = 'Education program assistant'