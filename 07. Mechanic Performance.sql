SELECT
CONCAT(m.FirstName,' ',m.LastName) AS Mechanic
,AVG(DATEDIFF(DAY,j.IssueDate,FinishDate)) AS [Average Days]
FROM Jobs AS j
JOIN Mechanics AS m ON j.MechanicId = m.MechanicId
WHERE j.[Status] = 'Finished'
GROUP BY m.FirstName,m.LastName,m.MechanicId
ORDER BY m.MechanicId