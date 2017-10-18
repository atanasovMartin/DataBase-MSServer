CREATE TABLE People (
Id INT PRIMARY KEY IDENTITY NOT NULL,
[Name] NVARCHAR (200) NOT NULL,
Picture VARBINARY,
Height NUMERIC  (10,2),
[Weight] NUMERIC(10,2),
Gender CHAR NOT NULL,
Birthdate DATE NOT NULL,
Biography TEXT
)

INSERT INTO People ([Name], Height, [Weight], Gender, Birthdate) 
VALUES('Vladi',176.20, 77.20, 'm', '10-09-1977')

INSERT INTO People ([Name], Height, [Weight], Gender, Birthdate) 
VALUES('Gosho',176.22, 77.22, 'm', '09-09-1977')

INSERT INTO People ([Name], Height, [Weight], Gender, Birthdate) 
VALUES('Petio',170.20, 73.10, 'm', '04-03-1979')

INSERT INTO People ([Name], Height, [Weight], Gender, Birthdate) 
VALUES('Vasko',166.50, 85.20, 'm', '10-09-1980')

INSERT INTO People ([Name], Height, [Weight], Gender, Birthdate) 
VALUES('Vesko',166.50, 85.20, 'm', '10-09-1980')