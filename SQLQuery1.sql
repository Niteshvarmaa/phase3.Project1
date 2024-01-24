CREATE DATABASE Rainbow_SchoolDb
USE Rainbow_SchoolDb

CREATE TABLE Subjects (
    SubjectID INT PRIMARY KEY,
    SubjectName NVARCHAR(100) NOT NULL)

CREATE TABLE Classes (
    ClassID INT PRIMARY KEY,
    ClassName NVARCHAR(100) NOT NULL)

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    DateOfBirth DATE,
    ClassID INT FOREIGN KEY REFERENCES Classes,
    SubjectID INT FOREIGN KEY REFERENCES Subjects)

INSERT INTO Subjects VALUES
    (1, 'Mathematics'),
    (2, 'Science'),
    (3, 'Hindi'),
    (4, 'English'),
    (5, 'Social');

INSERT INTO Classes VALUES
    (101, 'Class 1'),
    (102, 'Class 2'),
    (103, 'Class 3'),
    (104, 'Class 4'),
    (105, 'Class 5');


INSERT INTO Students VALUES
    (1001, 'J', 'suresh', '2005-01-16', 101, 1),
    (1002, 'M', 'Ramesh', '2006-02-18', 105, 2),
    (1003, 'H', 'Jaren', '2007-03-19', 103, 3),
    (1004, 'E', 'Kumar', '2008-04-20', 104, 1),
    (1005, 'T', 'Dinesh', '2009-05-21', 102, 4);
	
	SELECT * FROM Students;

	SELECT * FROM Subjects;

	SELECT * FROM Classes;

	CREATE INDEX Student_Class_Id_Index ON Students(ClassID)


	CREATE INDEX Student_Subject_Id_Index ON Students(SubjectID)

	SELECT StudentID, FirstName +' '+ LastName 'Student Name', DateOfBirth DOB, C.ClassID, c.ClassName, su.SubjectID, su.SubjectName 
FROM Students s 
JOIN Classes c ON s.ClassID = c.ClassID 
JOIN Subjects su ON su.SubjectID = s.SubjectID

