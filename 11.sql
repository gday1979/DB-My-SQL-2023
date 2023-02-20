CREATE FUNCTION udf_CreatorWithBoardgames(@name VARCHAR(30))
RETURNS INT
AS
BEGIN
     DECLARE @countOfName INT;
	 SET @countOfName=
	   (SELECT 
	         COUNT(*)
			 FROM Boardgames as b
			 JOIN CreatorsBoardgames AS cb ON b.Id=cb.BoardgameId
			 JOIN Creators AS c ON cb.CreatorId=c.Id
			 WHERE c.FirstName LIKE @name)
			 RETURN @countofName


END