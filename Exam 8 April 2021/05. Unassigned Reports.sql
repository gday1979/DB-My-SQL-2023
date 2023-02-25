SELECT r.Description,FORMAT(r.OpenDate,'dd-MM-yyyy')OpenDate
FROM Reports AS r
WHERE EmployeeId IS NULL
ORDER BY r.OpenDate,Description