SELECT t.Name,t.Age,t.PhoneNumber,t.Nationality,ISNULL(bp.Name,'(no bonus prize)' )AS 'BonusPrize'
	FROM Tourists AS t
	LEFT JOIN TouristsBonusPrizes AS tbp ON tbp.TouristId=t.Id
	LEFT JOIN BonusPrizes AS bp ON tbp.BonusPrizeId=bp.Id
ORDER BY t.Name