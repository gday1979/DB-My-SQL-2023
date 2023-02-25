SELECT
a.CountryName
,a.DistributorName
FROM
(
	SELECT
	c.[Name] AS CountryName
	,d.[Name] AS DistributorName
	,DENSE_RANK() OVER (PARTITION BY c.[name] ORDER BY COUNT(i.Id) DESC) AS [Rank]
	FROM Countries AS c
	JOIN Distributors AS d ON c.Id = d.CountryId
	LEFT JOIN Ingredients AS i ON d.Id = i.DistributorId
	GROUP BY c.[Name],d.[Name],d.Id
) AS a
WHERE a.[Rank] = 1