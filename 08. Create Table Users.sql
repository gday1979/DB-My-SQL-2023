CREATE TABLE Users
(
Id BIGINT PRIMARY KEY IDENTITY,
Username VARCHAR(30) NOT NULL,
[Password] VARCHAR(26) NOT NULL,
ProfilePicture VARCHAR(MAX),
LastLoginTime DATETIME,
IsDeleted BIT
)
INSERT INTO Users
(Username,[Password],ProfilePicture,LastLoginTime,IsDeleted)
VALUES
('goldy','aspartan123','https://unsplash.com/photos/oLWGI-Q76Yc/','6/12/2022',0),
('ghost','apartan123','https://unsplash.com/photos/oLWGI-Q76Yc/','5/15/2022',0),
('far','appartan123','https://unsplash.com/photos/oLWGI-Q76Yc/','4/16/2022',0),
('gboldy','maspartan123','https://unsplash.com/photos/oLWGI-Q76Yc/','2/17/2022',0),
('gooldy','casaspartan123','https://unsplash.com/photos/oLWGI-Q76Yc/','3/18/2022',0)

SELECT * FROM Users