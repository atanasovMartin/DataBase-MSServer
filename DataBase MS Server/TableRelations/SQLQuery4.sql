CREATE TABLE Teachers (
TeacherID INT PRIMARY KEY NOT NULL IDENTITY (101,1),
Name NVARCHAR(15) NOT NULL,
ManagerID INT
) 

ALTER TABLE Teachers
ADD FOREIGN KEY (ManagerID) REFERENCES Teachers (TeacherID)