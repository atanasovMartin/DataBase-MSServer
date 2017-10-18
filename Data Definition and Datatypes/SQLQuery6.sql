CREATE TABLE Customers (
AccountNumber INT PRIMARY KEY IDENTITY NOT NULL,
FirstName NVARCHAR(100) NOT NULL,
LastName NVARCHAR(100) NOT NULL,
PhoneNumber INT NOT NULL,
EmergencyName NVARCHAR(50),
EmergencyNumber INT NOT NULL,
Notes NVARCHAR(MAX)
)


INSERT INTO Customers (FirstName, LastName, PhoneNumber,EmergencyNumber)
VALUES ('Svetla', 'Gancheva', 052331445, 0887921392) 

INSERT INTO Customers (FirstName, LastName, PhoneNumber,EmergencyNumber)
VALUES ('Maria', 'Gancheva', 442331445, 0887913192) 

INSERT INTO Customers (FirstName, LastName, PhoneNumber,EmergencyNumber)
VALUES ('Vesko', 'Ganchev', 052331445, 0887921192) 


CREATE TABLE RoomStatus (
RoomStatus VARCHAR(20) PRIMARY KEY NOT NULL,
Notes VARCHAR(MAX)
)

INSERT INTO RoomStatus VALUES('0', 'zaeta')
INSERT INTO RoomStatus VALUES('1', 'svobodna')
INSERT INTO RoomStatus VALUES('2', 'ss')




SELECT * FROM RoomStatus


CREATE TABLE RoomTypes
(
RoomType NVARCHAR(50) PRIMARY KEY,
Notes NTEXT
)

INSERT INTO RoomTypes VALUES('A', 'A')
INSERT INTO RoomTypes VALUES('B', 'B')
INSERT INTO RoomTypes VALUES('C', 'C')

CREATE TABLE BedTypes
(
BedType NVARCHAR(50) PRIMARY KEY,
Notes NTEXT
)