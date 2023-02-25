SELECT a.AirportName,f.[Start],f.TicketPrice,p.FullName,ak.Manufacturer,ak.Model
FROM FlightDestinations AS f
JOIN Airports AS a ON f.AirportId=a.Id
JOIN Passengers AS p ON f.PassengerId=p.Id
JOIN Aircraft AS ak ON f.AircraftId=ak.Id
WHERE DATEPART(HOUR,f.[Start]) BETWEEN 6 AND 20
AND f.TicketPrice>2500
ORDER BY ak.Model ASC