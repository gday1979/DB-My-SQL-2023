SELECT 
*
FROM
(
    SELECT
    a.Id
    ,a.Manufacturer
    ,a.FlightHours
    ,COUNT(f.AircraftId) AS FlighDestinationsCount
    ,ROUND(AVG(f.TicketPrice),2) AS AvgPrice
    FROM Aircraft AS a
    JOIN FlightDestinations AS f ON a.Id = f.AircraftId
    GROUP BY a.Id, a.Manufacturer, a.FlightHours
    HAVING COUNT(f.AircraftId) >= 2
) AS a
ORDER BY a.FlighDestinationsCount DESC, a.Id ASC