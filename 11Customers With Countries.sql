CREATE VIEW v_UserWithCountries AS
SELECT
CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName
,c.Age
,c.Gender
,cc.[Name] AS CountryName
FROM Customers AS c
JOIN Countries AS cc ON c.CountryId = cc.Id