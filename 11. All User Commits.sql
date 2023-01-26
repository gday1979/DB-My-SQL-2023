CREATE FUNCTION udf_AllUserCommits(@username VARCHAR(30)) 
RETURNS INT
AS
BEGIN
      RETURN
	   (SELECT
	          COUNT(c.Id)
			  FROM Commits As c
			  JOIN Users AS u ON c.ContributorId=u.Id
			  WHERE u.UserName=@username)
END
