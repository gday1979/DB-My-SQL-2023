CREATE TABLE Countries
(
  Id INT PRIMARY KEY IDENTITY,
  Name NVARCHAR(50) UNIQUE
)
CREATE TABLE Customers
(
   Id INT PRIMARY KEY IDENTITY,
   FirstName NVARCHAR(25),
   LastName NVARCHAR(25),
   Gender CHAR(1) CHECK(Gender='M' OR Gender='F'),
   Age INT ,
   PhoneNumber VARCHAR(10) CHECK(LEN(PhoneNumber)=10),
   CountryId INT REFERENCES Countries(Id)
)
CREATE TABLE Products
(
  Id INT PRIMARY KEY IDENTITY,
  Name NVARCHAR(25) UNIQUE,
  Description NVARCHAR(250),
  Recipe NVARCHAR(MAX),
  Price DECIMAL(18,2) CHECK(Price>0) NOT NULL
)
CREATE TABLE Feedbacks
(
   Id INT PRIMARY KEY IDENTITY,
   Description NVARCHAR(255),
   Rate DECIMAL(2,2) CHECK(Rate BETWEEN 0.00 AND 10.00),
   ProductId INT REFERENCES Products(Id),
   CustomerId INT REFERENCES Customers(Id)
)
CREATE TABLE Distributors
(
   Id INT PRIMARY KEY IDENTITY,
   Name NVARCHAR(25) UNIQUE,
   AddressText NVARCHAR(30),
   Summary NVARCHAR(200),
   CountryId INT REFERENCES Countries (Id)
)
CREATE TABLE Ingredients
(
   Id INT PRIMARY KEY IDENTITY,
   Name NVARCHAR(30),
   Description NVARCHAR(200),
   OriginCountryId INT REFERENCES Countries(Id),
   DistributorId INT REFERENCES Distributors(Id)
)
CREATE TABLE ProductsIngredients
(
   ProductId INT REFERENCES Products(Id),
   IngredientId INT REFERENCES Ingredients(Id),
   PRIMARY KEY(ProductId,IngredientId)
)