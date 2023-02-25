CREATE TABLE Categories
(
   Id INT PRIMARY KEY IDENTITY,
   Name VARCHAR(50) NOT NULL
)
CREATE TABLE Locations
(
   Id INT PRIMARY KEY IDENTITY,
   Name VARCHAR(50) NOT NULL,
   Municipality VARCHAR(50),
   Province VARCHAR(50)
)
CREATE TABLE Sites
(
    Id INT PRIMARY KEY IDENTITY,
	Name VARCHAR(100) NOT NULL,
	LocationId INT REFERENCES Locations(Id) NOT NULL,
	CategoryId INT REFERENCES Categories(Id) NOT NULL,
	Establishment VARCHAR(15) 
	)
CREATE TABLE Tourists
(
    Id INT Primary KEY IDENTITY,
	Name VARCHAR(50) NOT NULL,
	Age INT  CHECK(Age >=0 AND Age <=120) NOT NULL,
	PhoneNumber VARCHAR(20) NOT NULL,
	Nationality VARCHAR(30) NOT NULL,
	Reward VARCHAR(20)
)
CREATE TABLE SitesTourists
(
   TouristId INT REFERENCES Tourists(Id) NOT NULL,
   SiteId INT REFERENCES Sites(Id) NOT NULL,
   PRIMARY KEY(TouristId,SiteId)
)
CREATE TABLE BonusPrizes
(
   Id INT PRIMARY KEY IDENTITY,
   Name VARCHAR(50) NOT NULL
)
CREATE TABLE TouristsBonusPrizes
(
   TouristId INT REFERENCES Tourists(Id) NOT NULL,
   BonusPrizeId INT REFERENCES BonusPrizes(Id) NOT NULL,
   PRIMARY KEY (TouristId,BonusPrizeId)
)