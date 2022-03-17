--Session 3: Creating a database with SQL
--Script to follow along during this session
--S3 Exercise 1: Create and activate a database with the name ‘HoF’







--SQL 3.1
CREATE TABLE consoles(
	consolecode VARCHAR(5) NOT NULL,
	consolename VARCHAR(45) NOT NULL,
	producer VARCHAR(45) NULL,
	buttons INT NULL,
	generation INT NULL,
	developer VARCHAR(45) NULL,
	sold INT NULL);

--S3 Exercise 2: Create the players table
--The players table consist out of the fields:
--playercode (VARCHAR with maximum length 5, not allowed to be left empty)
--name (VARCHAR with maximum length 45, not allowed to be left empty)
--country (CHAR with length 3)
--birthyear (INT)







--SQL 3.2
ALTER TABLE consoles
ADD PRIMARY KEY (consolecode);

--S3 Exercise 3a: Add the primary key to the players table
--the primary key should be on playercode.





--SQL 3.3
DROP TABLE players;
GO

CREATE TABLE players(
	playercode VARCHAR(5) NOT NULL PRIMARY KEY,
	name VARCHAR(45) NOT NULL,
	country CHAR(3) NULL,
	birthyear INT NULL);

--Exercise 3b: Create the countries table, with the primary key
--The countries tables consist out of the fields
-- countryID (CHAR with length 3, and is the primary key)
-- country (VARCHAR with maximum length 45, not allowed to be left empty)


--SQL 3.4
ALTER TABLE playersADD FOREIGN KEY (country) 
						REFERENCES countries(countryID) ;

--S3 Exercise 4: The query for creating the games table is already below.
--after you created the games table, add the following foreign keys.
-- origin (CHAR of length 3, a foreign key to the countryID in countries)
-- gameconsole (VARCHAR with maximum length 5, a foreign key to consolecode in consoles)
-- alternative (VARCHAR with maximum length 5, a foreign key to consolecode in consoles)
CREATE TABLE games(
	gamecode VARCHAR(5) NOT NULL PRIMARY KEY,
	name VARCHAR(45) NOT NULL,
	year INT NULL,
	creator VARCHAR(45) NULL,
	origin CHAR(3) NULL,
	gameconsole VARCHAR(5) NULL,
	alternative VARCHAR(5) NULL);











--SQL 3.5
DROP TABLE games;
GO

CREATE TABLE games(
	gamecode VARCHAR(5) NOT NULL PRIMARY KEY,
	name VARCHAR(45) NOT NULL,
	year INT NULL,
	creator VARCHAR(45) NULL,
	origin CHAR(3) NULL FOREIGN KEY REFERENCES countries(countryID) ,
	gameconsole VARCHAR(5) NULL FOREIGN KEY REFERENCES consoles(consolecode),
	alternative VARCHAR(5) NULL FOREIGN KEY REFERENCES consoles(consolecode));

--S3 Exercise 5: Create the scores table in one time (so no ‘ALTER’).
--The scores table consist of:
-- playercode (VARCHAR(5), part one of the primary key, also a foreign key to playercode in players)
-- gamecode (VARCHAR(5), part two of the primary key, also a foreign key to gamecode in games)
-- score (INT)
-- position (INT)
-- yearAchieved (INT)
CREATE TABLE scores(
	playercode VARCHAR(5) NOT NULL FOREIGN KEY REFERENCES players(playercode),
	gamecode VARCHAR(5) NOT NULL FOREIGN KEY REFERENCES games(gamecode),
	score INT NOT NULL,
	position INT NOT NULL,
	yearAchieved INT NOT NULL,
	PRIMARY KEY(playercode,gamecode))









--SQL 3.6
ALTER TABLE players
	ADD FOREIGN KEY (country) 
			REFERENCES countries(countryID)
				ON UPDATE CASCADE
				ON DELETE NO ACTION;

--S3 Exercise 6: adjust the foreign keys in the games table
-- the origin should be cascade on an update, and on delete no action
-- the gameconsole should be no action on both an update and delete
-- the alternative should be no action on both an update and delete






--SQL 3.7
DROP TABLE scores;
CREATE TABLE scores(
	playercode VARCHAR(5) NOT NULL,
	gamecode VARCHAR(5) NOT NULL,
	score INT NOT NULL,
	position INT NOT NULL,
	yearAchieved INT NULL,
	CONSTRAINT PK_scores PRIMARY KEY (playercode, gamecode),
	CONSTRAINT FK_playercode FOREIGN KEY (playercode) 
								REFERENCES players(playercode)
									ON UPDATE NO ACTION
									ON DELETE NO ACTION,
	CONSTRAINT FK_gamecode FOREIGN KEY (gamecode) 
								REFERENCES games(gamecode)
									ON UPDATE NO ACTION
									ON DELETE NO ACTION
	);

--PART TWO: Inserting data

--SQL 3.8
INSERT INTO consoles
VALUES	('GB', 'Game Boy', 'Nintendo', 8, 4, 'Nintendo', 120),
	('N3DS', 'Nintendo 3DS', 'Nintendo', 10, 3, 'Nintendo', 163),
	('PC', 'Personal Computer', Null, Null, Null, 'IBM', Null),
	('PS3', 'Play Station 3', 'Sony', 8, 5, 'Sony', 80),
	('XB360', 'Xbox 360', 'Flextronics', 10, 7, 'Microsoft', 84);

--S3 Exercise 7
--Using the 'Students EN' database:
-- Keep in mind that some of these exercises are NOT possible to complete. 
-- In these cases, try and figure out why this is not possible.

--7a INSERT a new major with code ABC and name Mathematics.


--7b INSERT a new major without a name, only code DEF.


--7c INSERT a new major with code ART and name Contemporary


--7d INSERT a new program ‘CoolSQL’ at InHolland, 
--		with a duration of 4 years and with majorCode ABC



--7e INSERT a new program with majorCode DEF in program.


--7f INSERT a new program with a programId as 121 in program.


--7g INSERT a new student enrolled in a newly added program. 
--		Make sure to specify the minimum number of fields !


--S3 Exercise 8
--8a UPDATE all students and set registered to true


--8b UPDATE students and set registered to false if they do not have a grant.


--8c UPDATE for all students living in Haarlem, the programIDs to 200.


--8d Set the registered field to 'unknown' for all students from Amsterdam.


--8e Increase all students' grants by 100. What will happen to students without a grant? Explain 


--S3 Exercise 9
--9a DELETE the ‘IT' program for 'InHolland' institute in program.


--9b DELETE all programs with unknown capacity in program.


--9c DELETE all majors in major.


