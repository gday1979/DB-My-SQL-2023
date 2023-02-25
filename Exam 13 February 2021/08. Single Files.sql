SELECT f.Id,f.Name,CONCAT(f.Size, 'KB')AS Size
FROM Files AS f
LEFT JOIN Files AS p ON f.Id=p.ParentId
WHERE p.Id IS NULL
ORDER BY f.Id ASC,f.Name ASC,f.Size DESC