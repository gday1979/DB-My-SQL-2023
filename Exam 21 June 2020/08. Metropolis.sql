SELECT TOP(10) c.Id, c.Name,c.CountryCode, COUNT(*) AS Accounts
FROM Accounts a
JOIN Cities c ON a.CityId=c.Id
GROUP BY c.Id,c.Name, c.CountryCode
ORDER BY Accounts DESC