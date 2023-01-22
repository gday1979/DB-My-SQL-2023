CREATE PROC usp_SearchByAirportName(@airportName VARCHAR(70))
AS
	SELECT 
		a.AirportName
		,p.FullName
		   ,CASE
				WHEN f.TicketPrice <= 400 THEN 'Low'
				WHEN f.TicketPrice BETWEEN 401 and 1500 THEN 'Medium'
				WHEN f.TicketPrice >= 1501 THEN 'High'
			END AS LevelOfTicketPrice
		,aa.Manufacturer
		,aa.Condition
		,aat.TypeName
	FROM FlightDestinations AS f
	JOIN Airports AS a ON f.AirportId = a.Id
	JOIN Aircraft AS aa ON f.AircraftId = aa.Id
	JOIN Passengers AS p ON f.PassengerId = p.Id
	JOIN AircraftTypes AS aat ON aa.TypeId = aat.Id
	WHERE a.AirportName = @airportName
	ORDER BY aa.Manufacturer, p.FullName 