CREATE TABLE Users (
Id INT PRIMARY KEY IDENTITY,
Username VARCHAR(30) NOT NULL,
Password VARCHAR(26) NOT NULL,
ProfilePicture VARBINARY,
LastLoginTime SMALLDATETIME,
IsDeleted VARCHAR(5)
)

INSERT INTO Users (Username,Password)
VALUES ('Ivan','Ivanov')

INSERT INTO Users (Username,Password)
VALUES ('Mima','Mima33')

INSERT INTO Users (Username,Password)
VALUES ('Marti','Jalex')

INSERT INTO Users (Username,Password)
VALUES ('Misho','Kapka1')

INSERT INTO Users (Username,Password)
VALUES ('Uzunov','Istinata')