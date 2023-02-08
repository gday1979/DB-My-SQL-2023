SELECT s.Name,s.Manufacturer
FROM Spaceships AS s
JOIN Journeys AS j ON j.SpaceshipId=s.Id
JOIN TravelCards AS tc ON tc.JourneyId=j.Id
JOIN Colonists AS c ON tc.ColonistId=c.Id
WHERE c.BirthDate>'01/01/1989' AND tc.JobDuringJourney='Pilot'
ORDER BY s.Name

