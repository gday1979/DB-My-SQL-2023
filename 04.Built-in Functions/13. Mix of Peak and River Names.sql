﻿SELECT [PeakName], [RiverName],
LOWER(CONCAT(
	[PeakName], 
	SUBSTRING([RiverName], 2, LEN([RiverName]))
		)) AS [Mix]
FROM [Peaks], [Rivers]
WHERE RIGHT([PeakName], 1) = LEFT([RiverName], 1)
ORDER BY [Mix]