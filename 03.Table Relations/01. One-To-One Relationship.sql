﻿CREATE TABLE [Passports]
(
	[PassportID] INT IDENTITY(101,1) PRIMARY KEY,
	[PassportNumber] NVARCHAR(20) UNIQUE 
)
CREATE TABLE [Persons]
(
	[PersonID] INT IDENTITY PRIMARY KEY, 
	[FirstName] NVARCHAR(20) NOT NULL,
	[Salary] DECIMAL(7,2) NOT NULL,
	[PassportID] INT REFERENCES [Passports]([PassportID])
)
INSERT INTO [Passports] VALUES
('N34FG21B'),
('K65LO4R7'),
('ZE657QP2')
INSERT INTO [Persons] VALUES
('Roberto', 43300.00, 102),
('Tom', 56100.00, 103),
('Yana', 60200.00, 101)