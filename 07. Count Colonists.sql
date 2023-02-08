SELECT COUNT(j.Purpose) AS Count
FROM Colonists AS c
JOIN TravelCards AS tc ON tc.ColonistId=c.Id
JOIN Journeys AS j ON tc.JourneyId=j.Id
WHERE j.Purpose='Technical'