--This sets the database to use to none:
USE master
GO

--Create the database itself
CREATE DATABASE [Student EN]
GO

--Select the new database
USE [Student EN]

--Create the table
CREATE TABLE STUDENT(
	name nvarchar(50) NULL,
	residence nvarchar(50) NULL,
	birthYear int NULL,
	[grant] money NULL,
	program nvarchar(50) NULL
)

--Enter the values
INSERT STUDENT(name,residence,birthYear,[grant],program)
VALUES	('Jan','Alkmaar', 1970, 100, 'Economics' ),  
		('Kees', 'Den Haag', 1975, 120, 'Information Technology'),
		('Miranda', 'Haarlem', 1980, 100, 'Engineering' ),
		('Ali', 'Amsterdam', 1970, NULL, 'Economics'),
		('James', 'Amsterdam', 1965, 100, 'Information Technology'),
		('Fatih', 'Haarlem', 1970, 90, 'Economics' ),
		('Karen', 'Den Haag', 1980, 90, NULL), 
		('Leo', 'Amsterdam', 1965, NULL, 'Engineering'),
		('Clair', 'Alkmaar', 1970, 130, 'Information Technology'), 
		('Janice', 'Amsterdam', 1970, 90, 'Economics'),
		('Richard', 'Amsterdam', 1975, 100, NULL)
GO