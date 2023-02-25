SELECT c.Name, COUNT(*) AS Hotels
 FROM Hotels h
  JOIN Cities c ON h.CityId=c.Id
  GROUP BY c.Name
  ORDER BY Hotels DESC,c.Name ASC