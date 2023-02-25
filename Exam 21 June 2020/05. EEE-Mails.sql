SELECT 
    FirstName,
    LastName,
    FORMAT(BirthDate,'MM-dd-yyyy') AS BirthDate,
	Name AS HomeTown,
	Email
FROM Accounts a
 JOIN Cities c ON a.CityId=c.Id
  WHERE [Email] LIKE 'e%'
  ORDER BY c.Name ASC