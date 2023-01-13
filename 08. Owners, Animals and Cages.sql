
SELECT 
 CONCAT(O.[Name], '-', A.[Name]) AS OwnersAnimals
,O.PhoneNumber
,C.CageId
FROM Animals AS A
JOIN Owners AS O ON A.OwnerId = O.Id
JOIN AnimalsCages AS C ON A.Id = C.AnimalId
JOIN AnimalTypes AS T ON A.AnimalTypeId = T.Id
WHERE T.AnimalType = 'Mammals'
ORDER BY O.[Name], A.[Name] DESC