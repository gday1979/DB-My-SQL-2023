SELECT f.ProductId,f.Rate,f.Description,f.CustomerId,c.Age,c.Gender
FROM Feedbacks AS F
JOIN Customers AS C ON f.CustomerId=c.Id
WHERE f.Rate<5.0
ORDER BY f.ProductId DESC,f.Rate ASC