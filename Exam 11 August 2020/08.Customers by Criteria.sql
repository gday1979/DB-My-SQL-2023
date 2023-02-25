SELECT c.FirstName,c.Age,c.PhoneNumber
FROM Customers AS c
JOIN Countries AS cs ON c.CountryId=cs.Id
WHERE (c.Age >=21 AND c.FirstName LIKE '%an%')
       OR( c.PhoneNumber LIKE '%38' AND cs.Name != 'Greece')
ORDER BY c.FirstName,c.Age DESC