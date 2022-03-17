USE [Students EN]
--2-a
--SELECT	[name],
--		[grant],
--		[city]
--FROM	student
--2b

--SELECT [name],[studentId],[city]
--FROM student
--WHERE city='Haarlem'

--2c
--SELECT [name],[city],[programId]
--FROM student
--WHERE city='Amsterdam' OR programId=104;
--2d
--SELECT [name],[city],[grant]
--FROM student
--WHERE city='Haarlem' AND [grant]>=100;
--2e
--SELECT [name],[city],[grant],[programID]
--FROM student
--WHERE programId=104 AND [grant] BETWEEN 100 AND 300;
--2f
--SELECT [programName]
--FROM program
--WHERE duration>=4 AND capacity>100 OR institute LIKE 'H%';
--2g
--SELECT [name],[city]
--FROM student
--WHERE	programId<110 
--		AND [grant] BETWEEN 100 AND 300
--		AND city NOT LIKE '_e%';



