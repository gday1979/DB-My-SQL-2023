SELECT i.Id,CONCAT (u.UserName, ' : ',i.Title) AS IssueAssignee
FROM Issues AS i 
LEFT JOIN Users AS u ON i.AssigneeId=u.Id
ORDER BY i.Id DESC,i.AssigneeId