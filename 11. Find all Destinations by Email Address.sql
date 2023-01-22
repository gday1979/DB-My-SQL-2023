CREATE FUNCTION udf_FlightDestinationsByEmail(@email VARCHAR(50))
RETURNS INT
AS
BEGIN
       DECLARE @Count  INT
	   SET @Count=(
	   SELECT COUNT(f.PassengerId) [Output]
	   FROM Passengers AS p
	   JOIN FlightDestinations AS f ON p.Id=f.PassengerId
	   WHERE p.Email=@email
	   )
       RETURN @Count 
END