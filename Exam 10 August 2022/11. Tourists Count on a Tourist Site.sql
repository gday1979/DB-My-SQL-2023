CREATE FUNCTION udf_GetTouristsCountOnATouristSite (@Site VARCHAR(100)) 
RETURNS INT
AS
BEGIN
        RETURN (SELECT COUNT(t.Id) FROM Tourists AS t
		JOIN SitesTourists AS st ON t.id=st.TouristId
		JOIN Sites AS s ON s.Id=st.SiteId
		WHERE s.Name=@Site)
END