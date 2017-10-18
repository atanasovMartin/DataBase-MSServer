CREATE TABLE Manufacturers (
ManufacturerID INT PRIMARY KEY IDENTITY(1,1),
[Name] NVARCHAR(15),
EstablishedOn DATE
)
SELECT * FROM Manufacturers
INSERT INTO Manufacturers
VALUES ('BMW','07/03/1916'),('Tesla','01/01/2003'),('Lada','01/05/1966')

CREATE TABLE Models(
ModelID INT PRIMARY KEY IDENTITY(101,1),
[NAME] VARCHAR(15),
ManufacturerID INT NOT NULL FOREIGN KEY 
REFERENCES Manufacturers(ManufacturerID)
)

INSERT INTO Models 
VALUES ('X1',1),('I6',1),('MODEL S',2),('MODEL X',2),('MODEL 3',2),('NOVA',3)
