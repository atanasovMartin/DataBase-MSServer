CREATE TABLE Passports (
PassportID INT NOT NULL PRIMARY KEY IDENTITY (101,1),
PassportNumber CHAR(8) NOT NULL
)

INSERT INTO Passports(PassportNumber)
VALUES('N34FG218'),('K65LO4R7'),('ZE657QP2')


CREATE TABLE Persons (
PersonID INT PRIMARY KEY IDENTITY, 
FirstName NVARCHAR(50) NOT NULL,
Salary DECIMAL (10,2),
PassportID INT NOT NULL FOREIGN KEY 
REFERENCES Passports(PassportID) 
)
INSERT INTO Persons 
VALUES('Roberto',43300.00,102),('Tom',56100.00,103),('Yana',60200.00,101)