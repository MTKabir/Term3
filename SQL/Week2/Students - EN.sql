SELECT p.programName,m.[name]
FROM major AS m
	JOIN program AS p ON 
	m.code=p.majorCode
DELETE FROM program
WHERE programId>150
	

USE master
DROP DATABASE [Assignment2]
CREATE DATABASE [Students EN]
GO

USE [Students EN]

CREATE TABLE student(
	studentId int IDENTITY(200,1) NOT NULL PRIMARY KEY,
	name nvarchar(20) NOT NULL,
	programId int NOT NULL,
	[grant] money NULL,
	city nvarchar(20) NULL,
	birthDate date NULL,
	registered bit NULL,
 )

CREATE TABLE program(
	programId int IDENTITY(100,1) NOT NULL PRIMARY KEY,
	programName nvarchar(30) NOT NULL,
	institute nvarchar(20) NULL,
	capacity int NULL,
	category nvarchar(50) NULL,
	duration tinyint NULL,
	majorCode nchar(5) NULL,
)

CREATE TABLE major(
	code nchar(5) NOT NULL PRIMARY KEY,
	name nvarchar(50) NOT NULL
)

SET IDENTITY_INSERT student ON 
INSERT student (studentId, name, programId, [grant], city, birthDate, registered) 
VALUES	(201, 'Henk', 104, 565.0000, 'Leiden', CAST('1980-10-17' AS date), NULL),
		(202, 'Sophie', 105, 600.0000, 'Haarlem', CAST('1988-07-27' AS date), NULL),
		(203, 'Yvonne', 104, 64.0000, 'Haarlem', CAST('1982-01-06' AS date), NULL),
		(204, 'rijkestinkerd', 104, 965.0000, 'Enschede', CAST('1995-12-20' AS date), NULL),
		(205, 'Josef', 107, 500.0000, 'Zoeterwoude', CAST('1997-02-28' AS date), NULL),
		(206, 'Janette', 107, NULL, 'Diemen', CAST('1994-06-11' AS date), NULL),
		(207, 'Peter', 108, NULL, 'Diemen', CAST('1995-01-06' AS date), NULL),
		(208, 'Eva', 109, 700.0000, 'Zandvoort', CAST('1996-06-01' AS date), NULL),
		(209, 'Steef', 104, 64.0000, 'Leiden', CAST('1996-09-22' AS date), NULL),
		(210, 'Fatima', 105, NULL, 'Utrecht', CAST('1994-04-23' AS date), NULL),
		(212, 'Jan', 112, 100.0000, 'Alkmaar', NULL, NULL),
		(213, 'Kees', 104, 285.0000, 'Den Haag', CAST('1975-08-01' AS date), NULL),
		(214, 'Miranda', 105, 100.0000, 'Haarlem', CAST('1980-06-03' AS date), NULL),
		(215, 'Ali', 112, NULL, 'Amsterdam', CAST('1970-10-16' AS date), NULL),
		(216, 'James', 104, 265.0000, 'Amsterdam', NULL, NULL),
		(217, 'Leo', 107, 100.0000, 'Haarlem', CAST('1965-01-01' AS date), NULL)
SET IDENTITY_INSERT student OFF

SET IDENTITY_INSERT program ON 
INSERT program (programId, programName, institute, capacity, category, duration, majorCode) 
VALUES	(104, 'Information Technology', 'InHolland', 40, 'T01', 4, 'T01'),
		(105, 'Innovation Business', 'HAN', 500, 'BUS', 4, 'BUS'),
		(106, 'Construction Engineering', 'InHolland', NULL, 'T02', 4, 'T02'),
		(107, 'Didactics', 'Universiteit Diemen', 120, 'D01', 3, 'D01'),
		(108, 'Dance', 'HvA', NULL, 'ART', 4, 'ART'),
		(109, 'Politics', 'Haagse Hogeschool', 60, 'OTH', 2, 'OTH'),
		(112, 'Economics', 'HvA', 150, 'BUS', 4, 'BUS'),
		(113, 'Nursing', 'Hogeschool Utrecht', 100, 'H11', 4, 'H11')
SET IDENTITY_INSERT program OFF


INSERT major (code, name) 
VALUES	('OTH', 'Other'),
		('BUS', 'Business'),
		('D01', 'Education'),
		('ART', 'Art'),
		('T01', 'Technique'),
		('T02', 'Engineering'),
		('H11', 'Health')
GO

ALTER TABLE student
ADD FOREIGN KEY (programID) REFERENCES program (programID)

ALTER TABLE program
ADD FOREIGN KEY (majorCode) REFERENCES major (code)

