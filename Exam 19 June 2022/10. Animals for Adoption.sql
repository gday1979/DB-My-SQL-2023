SELECT 
a.[Name]
,FORMAT(a.BirthDate,'yyyy') AS BirthDate
,aa.AnimalType
FROM Animals AS a
JOIN AnimalTypes AS aa ON a.AnimalTypeId = aa.Id
WHERE a.OwnerId IS NULL
	AND a.BirthDate > '2018-01-01'
	AND aa.Id != 3
ORDER BY a.[Name]