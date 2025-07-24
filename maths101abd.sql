
CREATE TABLE Students1 (
  StudentID INT PRIMARY KEY,
  Name VARCHAR(100)
);
INSERT INTO Students1 (StudentID, Name) VALUES
(1, 'Ali'),
(2, 'Bilal'),
(3, 'Cessa');

CREATE TABLE Courses1 (
  CourseID INT PRIMARY KEY,
  CourseName VARCHAR(100)
);

INSERT INTO Courses1 (CourseID, CourseName) VALUES
(101, 'Maths - 101'),
(102, 'Physics - 201'),
(103, 'Chemistry - 301');

CREATE TABLE Enrollments1 (
  EnrollmentID INT PRIMARY KEY,
  StudentID INT,
  CourseID INT,
  FOREIGN KEY (StudentID) REFERENCES Students1(StudentID),
  FOREIGN KEY (CourseID) REFERENCES Courses1(CourseID)
);

INSERT INTO Enrollments1 (EnrollmentID, StudentID, CourseID) VALUES
(1, 1, 101), -- Alice in Maths - 101
(2, 2, 101); -- Bob in Maths - 101




SELECT s.StudentID, s.Name, c.CourseName
FROM Enrollments1 e
JOIN Students1 s ON e.StudentID = s.StudentID
JOIN Courses1 c ON e.CourseID = c.CourseID
WHERE c.CourseName = 'Maths - 101';
