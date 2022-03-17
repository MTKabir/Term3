--Creating Room Table
CREATE TABLE Rooms (	
    Number INT PRIMARY KEY NOT NULL,
	Capacity INT NOT NULL,
	[Type] VARCHAR(10) NOT NULL
);
INSERT INTO Rooms VALUES
	
	(201,2,'Student'),
	(202,1,'Student'),
	(203,3,'Student'),
	(204,2,'Teacher'),
	(205,1,'Student'),
	(206,2,'Student'),
	(207,1,'Teacher'),
	(208,2,'Student'),
	(209,1,'Student'),
	(210,2,'Student'),
	(211,1,'Teacher'),
	(212,2,'Student'),
	(213,1,'Student'),
	(214,2,'Student'),
	(215,1,'Teacher'),
	(216,2,'Student'),
	(217,1,'Student'),
	(218,2,'Student'),
	(219,1,'Student'),
	(220,2,'Teacher'),
	(221,1,'Student'),
	(222,2,'Teacher'),
	(223,1,'Student'),
	(224,2,'Student'),
	(225,1,'Teacher');
SELECT * FROM Students