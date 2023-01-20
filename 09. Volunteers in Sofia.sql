SELECT
[Name]
,PhoneNumber
,SUBSTRING(TRIM(REPLACE(Address,',','')),7,50) AS [Address]
FROM Volunteers
WHERE DepartmentId = 2
	AND [Address] LIKE '%sofia%'
ORDER BY [Name]