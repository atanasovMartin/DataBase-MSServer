CREATE TABLE Majors (
MajorID INT PRIMARY KEY IDENTITY,
Name  VARCHAR(50)
)
CREATE TABLE Students (
StudentID INT PRIMARY KEY IDENTITY,
StudentNumber INT,
StudentName VARCHAR(50),
MajorID INT FOREIGN KEY 
REFERENCES Majors (MajorID)
)
CREATE TABLE Payments (
	PaymentID INT PRIMARY KEY IDENTITY	,
	PaymentDate DATE NOT NULL,
	PaymentAmount DECIMAL(10, 2) NOT NULL,
	StudentID INT NOT NULL FOREIGN KEY REFERENCES Students(StudentID)
	)	
CREATE TABLE Subjects (
	SubjectID INT PRIMARY KEY IDENTITY,
	SubjectName VARCHAR(50) NOT NULL
)


CREATE TABLE Agenda (
	StudentID INT,
	SubjectID INT,

	CONSTRAINT PK_StudentsSubjects PRIMARY KEY (StudentID, SubjectID),

	CONSTRAINT FK_Agenda_Students 
	FOREIGN KEY (StudentID) 
	REFERENCES Students(StudentID),

	CONSTRAINT FK_Agenda_Subjects
	FOREIGN KEY (SubjectID)
	REFERENCES Subjects(SubjectID)
	)