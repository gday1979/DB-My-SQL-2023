SELECT 
*
FROM
(
	SELECT
	d.[Name] AS DistributorName
	,i.[Name] AS IngredientName
	,p.[Name] AS ProductName
	,AVG(f.Rate) AS AverageRate
	FROM Distributors AS d
	JOIN Ingredients AS i ON d.Id = i.DistributorId
	JOIN ProductsIngredients AS [pi] ON i.Id = [pi].IngredientId
	JOIN Products AS p ON [pi].ProductId = p.Id
	JOIN Feedbacks AS f ON f.ProductId = p.Id
	GROUP BY d.[Name],i.[Name],p.[Name]
) AS a
WHERE a.AverageRate BETWEEN 5 AND 8
ORDER BY a.DistributorName,a.IngredientName,a.ProductName
