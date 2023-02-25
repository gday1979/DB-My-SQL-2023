SELECT TOP(5) r.Id,[Name],COUNT(*)AS Commits
FROM Repositories AS r
JOIN Commits AS c ON c.RepositoryId=r.Id
JOIN RepositoriesContributors AS rc ON r.Id=rc.RepositoryId
GROUP BY r.Id,[Name]
ORDER BY Commits DESC,r.Id,r.Name