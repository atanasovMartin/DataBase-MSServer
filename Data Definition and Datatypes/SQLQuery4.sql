CREATE TABLE Directors (
Id INT PRIMARY KEY IDENTITY NOT NULL,
DirectorName NVARCHAR(50) NOT NULL,
Notes NVARCHAR(MAX)
)

CREATE TABLE Genres(
Id INT PRIMARY KEY IDENTITY NOT NULL,
GenreName NVARCHAR(50) NOT NULL,
Notes NVARCHAR(MAX)
)

CREATE TABLE Categories(
Id INT PRIMARY KEY IDENTITY NOT NULL,
CategoryName NVARCHAR(50) NOT NULL,
Notes NVARCHAR(MAX)
)


CREATE TABLE Movies(
Id INT PRIMARY KEY IDENTITY NOT NULL,
Title NVARCHAR(50) NOT NULL,
DirectorId INT NOT NULL,
CopywrightYear DATE NOT NULL,
Lenght VARCHAR(15) NOT NULL,
GenreId INT NOT NULL,
CategoryId INT NOT NULL, 
Rating INT,
NOTES NVARCHAR(MAX)
)


INSERT INTO Genres(GenreName)
VALUES ('Action')
INSERT INTO  Genres(GenreName)
VALUES ('Triler')
INSERT INTO  Genres(GenreName)
VALUES ('Drama')
INSERT INTO  Genres(GenreName)
VALUES ('Romantic')
INSERT INTO  Genres(GenreName)
VALUES ('Sex')


INSERT INTO Directors(DirectorName)
VALUES ('Hopkins')
INSERT INTO Directors(DirectorName)
VALUES ('Spilberg')
INSERT INTO Directors(DirectorName)
VALUES ('Lucas')
INSERT INTO Directors(DirectorName)
VALUES ('Kaufman')
INSERT INTO Directors(DirectorName)
VALUES ('Wright')

INSERT INTO Categories(CategoryName)
VALUES ('A')
INSERT INTO Categories (CategoryName)
VALUES ('B')
INSERT INTO Categories (CategoryName)
VALUES ('C')
INSERT INTO Categories (CategoryName)
VALUES ('C*')
INSERT INTO Categories (CategoryName)
VALUES ('D')


INSERT INTO Movies (Title, DirectorId, CopywrightYear, Lenght, GenreId, CategoryId )
VALUES('NewOne', 1,'1999-10-09','1:23:45',1,1)
INSERT INTO Movies (Title, DirectorId, CopywrightYear, Lenght, GenreId, CategoryId )
VALUES('Friends', 2,'1999-11-03','1:03:15',2,2)
INSERT INTO Movies (Title, DirectorId, CopywrightYear, Lenght, GenreId, CategoryId )
VALUES('ManKind', 4,'1989-04-02','1:11:35',4,4)
INSERT INTO Movies (Title, DirectorId, CopywrightYear, Lenght, GenreId, CategoryId )
VALUES('c#', 3,'2000-03-03','2:23:45',3,3)
INSERT INTO Movies (Title, DirectorId, CopywrightYear, Lenght, GenreId, CategoryId )
VALUES('JAVA', 5,'1979-01-02','1:13:15',5,5)
 