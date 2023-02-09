SELECT JobDuringJourney,FullName,JobRank
FROM (
        SELECT tc.JobDuringJourney,
		c.FirstName+ ' ' +c.LastName AS FullName,
		RANK() OVER(PARTITION BY JobDuringJourney ORDER BY BirthDate ASC) AS JobRank
		FROM Colonists AS c
		JOIN TravelCards AS tc ON c.Id=tc.ColonistId
)AS ranked
WHERE JobRank=2