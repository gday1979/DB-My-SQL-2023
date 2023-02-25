SELECT a.Name,AnimalType,FORMAT(Birthdate,'dd.MM.yyyy') AS BirthDate
FROM Animals AS a
JOIN AnimalTypes as T ON a.AnimalTypeId=T.Id
ORDER BY a.Name ASC