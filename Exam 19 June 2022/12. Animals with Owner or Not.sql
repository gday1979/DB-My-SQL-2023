CREATE PROCEDURE usp_AnimalsWithOwnersOrNot(@AnimalName VARCHAR(50))
AS
	SELECT
	a.[Name]
	,CASE
		WHEN a.OwnerId IS NULL THEN 'For adoption'
		ELSE o.[Name]
	 END AS OwnersName
	FROM Owners AS o
	RIGHT JOIN Animals AS a ON o.Id = a.OwnerId
	WHERE a.[Name] = @AnimalName