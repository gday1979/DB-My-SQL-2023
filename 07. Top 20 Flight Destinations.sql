SELECT TOP(20) f.Id
,f.[Start],p.FullName,a.AirportName,f.TicketPrice
FROM FlightDestinations f
JOIN Airports a ON f.AirportId=a.Id
JOIN Passengers p ON f.PassengerId=p.Id
WHERE DATEPART(Day,f.[Start]) %2 = 0
ORDER BY f.TicketPrice DESC, a.AirportName ASC