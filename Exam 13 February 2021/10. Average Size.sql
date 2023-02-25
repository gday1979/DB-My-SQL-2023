SELECT u.UserName,AVG(f.Size) AS Size
FROM Users AS u
JOIN Commits c ON u.Id=c.ContributorId
JOIN Files f ON c.Id=f.CommitId
GROUP BY u.Id,u.UserName
ORDER BY Size DESC,u.UserName