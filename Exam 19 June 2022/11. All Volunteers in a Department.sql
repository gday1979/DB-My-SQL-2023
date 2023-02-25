CREATE FUNCTION udf_GetVolunteersCountFromADepartment(@VolunteersDepartment VARCHAR(50))
RETURNS INT
AS
BEGIN
	DECLARE @count INT
		SET @count =
			(
				SELECT
				COUNT(v.Id)
				FROM VolunteersDepartments AS vd
				JOIN Volunteers AS v ON vd.Id = v.DepartmentId
				WHERE vd.DepartmentName = @VolunteersDepartment
			)
	RETURN @count
END