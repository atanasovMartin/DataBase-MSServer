CREATE TABLE Categories (
Id INT PRIMARY KEY IDENTITY NOT NULL,
CategoryName VARCHAR(50) NOT NULL,
DailyRate INT,
WeeklyRate INT,
MountlyRate INT,
WeekendRate INT
)
INSERT INTO Categories (CategoryName)
VALUES ('Coupe')	

INSERT INTO Categories (CategoryName)
VALUES ('Sedan')

INSERT INTO Categories (CategoryName)
VALUES ('Tourer')

CREATE TABLE Cars (
Id INT PRIMARY KEY IDENTITY NOT NULL,
PlateNumber NVARCHAR(50) NOT NULL,
Manufacturer NVARCHAR(50) NOT NULL,
Model NVARCHAR(50) NOT NULL,
CarYear DATE NOT NULL,
CategoryId INT NOT NULL,
Doors INT NOT NULL,
Picture VARBINARY(MAX),
Condition VARCHAR(50),
Available INT NOT NULL
)

INSERT INTO Cars (PlateNumber, Manufacturer, Model, CarYear, CategoryId, Doors, Available)
VALUES('B7782HB','Honda','Civic', '2007-10-05', 1,4,1)

INSERT INTO Cars (PlateNumber, Manufacturer, Model, CarYear, CategoryId, Doors, Available)
VALUES('B0646HB','Honda','Accord', '1998-08-05', 2,5,1)

INSERT INTO Cars (PlateNumber, Manufacturer, Model, CarYear, CategoryId, Doors, Available)
VALUES('B8211HB','Honda','Accord', '1999-08-05', 3,4,0)

CREATE TABLE Employees (
Id INT PRIMARY KEY IDENTITY NOT NULL,
FirstName NVARCHAR(50) NOT NULL,
LastName NVARCHAR(50) NOT NULL,
Title NVARCHAR(50),
Notes NVARCHAR(50)
)


INSERT INTO Employees(FirstName, LastName)
VALUES('Maria', 'Gancheva')

INSERT INTO Employees (FirstName, LastName)
VALUES('Maria', 'Peneva')

INSERT INTO Employees (FirstName, LastName)
VALUES('Maria', 'Docheva')

CREATE TABLE Customers (
Id INT PRIMARY KEY IDENTITY NOT NULL,
DriverLicenseNumber DECIMAL NOT NULL,
FullName NVARCHAR(100) NOT NULL,
Adress NVARCHAR (200) NOT NULL,
City NVARCHAR(100) NOT NULL,
ZipCode DECIMAL(10)NOT NULL,
Notes NVARCHAR(MAX)
)

INSERT INTO Customers (DriverLicenseNumber, FullName, Adress, City, ZipCode)
VALUES (100330, 'Svetla Gancheva', 'Chaika 2', 'Varna', 9000)

INSERT INTO Customers (DriverLicenseNumber, FullName, Adress, City, ZipCode)
VALUES (100333, 'Svetla Peneva', 'Chaika 3', 'Varna', 9000)

INSERT INTO Customers (DriverLicenseNumber, FullName, Adress, City, ZipCode)
VALUES (100334, 'Svetla Docheva', 'Chaika 4', 'Varna', 9000)


CREATE TABLE RentalOrders (
Id INT PRIMARY KEY IDENTITY NOT NULL,
EmployeeId INT NOT NULL,
CustomerId INT NOT NULL,
CarId INT NOT NULL,
TankLevel INT NOT NULL,
KilometrageStart DECIMAL,
KilometrageEnd DECIMAL,
TotalKilometrage DECIMAL,
StartDate DATE NOT NULL,
EndDate DATE NOT NULL,
TotalDays INT NOT NULL,
RateApplied DECIMAL,
TaxRate DECIMAL NOT NULL,
OrderStatus VARCHAR(50),
Notes NVARCHAR(MAX)
)

INSERT INTO RentalOrders(EmployeeId, CustomerId,CarId,TankLevel,StartDate,EndDate,TotalDays,TaxRate)
VALUES(1,1,1,5,'2017-09-24','2017-09-27',3,40)
INSERT INTO RentalOrders(EmployeeId, CustomerId,CarId,TankLevel,StartDate,EndDate,TotalDays,TaxRate)
VALUES(2,2,2,0,'2017-09-20','2017-09-23',3,20)
INSERT INTO RentalOrders(EmployeeId, CustomerId,CarId,TankLevel,StartDate,EndDate,TotalDays,TaxRate)
VALUES(3,3,3,10,'2017-09-27','2017-09-30',3,80)

