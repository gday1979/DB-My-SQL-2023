SELECT j.id,FORMAT(j.JourneyStart,'dd/MM/yyyy') AS JourneyStart
,FORMAT(j.JourneyEnd,'dd/MM/yyyy')AS JourneyEnd
FROM Journeys AS j
WHERE Purpose='Military'
ORDER BY j.JourneyStart 