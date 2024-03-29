﻿CREATE TABLE Passengers
(
  Id INT PRIMARY KEY IDENTITY,
  FullName VARCHAR(100) NOT NULL,
  Email VARCHAR(50)NOT NULL
)
CREATE TABLE Pilots
(
   Id INT PRIMARY KEY IDENTITY,
   FirstName VARCHAR(30) NOT NULL,
   LastName VARCHAR(30) NOT NULL,
   Age TINYINT CHECK(Age BETWEEN 21 AND 62) NOT NULL,
   Rating FLOAT CHECK(Rating BETWEEN 0.0 AND 10.0)
)
CREATE TABLE AircraftTypes
(
  Id INT PRIMARY KEY IDENTITY,
  TypeName VARCHAR(30) NOT NULL
)
CREATE TABLE Aircraft
(
  Id INT PRIMARY KEY IDENTITY,
  Manufacturer VARCHAR(25) NOT NULL,
  Model VARCHAR(30) NOT NULL,
  Year INT NOT NULL,
  FlightHours INT,
  Condition CHAR(1) NOT NULL,
  TypeId INT REFERENCES AircraftTypes(Id) NOT NULL
)
CREATE TABLE PilotsAircraft
(
    AircraftId INT REFERENCES Aircraft(Id) NOT NULL,
	PilotId INT REFERENCES Pilots(Id) NOT NULL,
	PRIMARY KEY(AircraftId,PilotId)
)
CREATE TABLE Airports
(
  Id INT PRIMARY KEY IDENTITY,
  AirportName VARCHAR(70) NOT NULL,
  Country VARCHAR(100) NOT NULL
)
CREATE TABLE FlightDestinations
(
  Id INT PRIMARY KEY IDENTITY,
  AirportId INT REFERENCES Airports(Id) NOT NULL,
  [Start] DATETIME NOT NULL,
  AircraftId INT REFERENCES Aircraft(Id) NOT NULL,
  PassengerId INT REFERENCES Passengers(Id) NOT NULL,
  TicketPrice DECIMAL(18,2) DEFAULT(15) NOT NULL
)