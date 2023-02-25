SELECT
CONCAT(m.FirstName,' ',m.LastName) AS Available
FROM Mechanics AS m
LEFT JOIN Jobs AS j ON j.MechanicId = m.MechanicId
WHERE j.[Status] LIKE 'Finished' OR j.[Status] IS NULL
GROUP BY m.MechanicId,m.FirstName,m.LastName
ORDER BY m.MechanicId