SELECT AccountId AS Id,Email,ac.Name AS City,COUNT(*) AS Trips
  FROM AccountsTrips at
  JOIN Accounts a ON at.AccountId=a.Id
  JOIN Cities ac ON a.CityId=ac.Id
  JOIN Trips t ON at.TripId=t.Id
  JOIN Rooms r ON t.RoomId=r.Id
  JOIN Hotels h ON r.HotelId=h.Id
  JOIN Cities hc ON h.CityId=hc.Id
  WHERE hc.Id=ac.Id
  GROUP BY AccountId,Email,ac.Name
  ORDER By Trips DESC ,AccountId ASC