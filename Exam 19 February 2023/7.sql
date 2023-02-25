SELECT c.Id,c.FirstName+ ' ' +c.LastName AS CreatorName,c.Email
FROM Creators AS c
LEFT JOIN CreatorsBoardgames AS cb ON cb.CreatorId=c.Id
WHERE c.Id NOT IN(SELECT CreatorId FROM CreatorsBoardgames)
ORDER BY CreatorName ASC