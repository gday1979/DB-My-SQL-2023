﻿SELECT TOP(5) o.Name AS Owner,COUNT(a.Id) AS CountAnimals
FROM Animals AS a
  JOIN Owners AS o ON a.OwnerId=o.Id
  GROUP BY o.Name
  ORDER BY COUNT( a.Id) DESC,o.Name