   CREATE TABLE StudentTotalMarks
    ( 
        StudentName VARCHAR(80),
        MarksObtained INT,
        TotalMarks INT
    )

	 INSERT INTO StudentTotalMarks VALUES ('Tim Paul', 476, 500)

    INSERT INTO StudentTotalMarks VALUES ('Branda Johnson', 450, 500)

    INSERT INTO StudentTotalMarks VALUES ('Kate Berg', 356, 500)

    INSERT INTO StudentTotalMarks VALUES ('John Sean', 476, 500)

    INSERT INTO StudentTotalMarks VALUES ('Petro Smith', 450, 500)

    INSERT INTO StudentTotalMarks VALUES ('Suzie Brown', 450, 500)

    INSERT INTO StudentTotalMarks VALUES ('Rebecca Wilson', 489, 500)

    INSERT INTO StudentTotalMarks VALUES ('Charles Davis', 476, 500)

    INSERT INTO StudentTotalMarks VALUES ('Anna Taylor', 390, 500)

    INSERT INTO StudentTotalMarks VALUES ('Sean Jones', 455, 500)

    INSERT INTO StudentTotalMarks VALUES ('Mike Jackson', 356, 500)

	SELECT * FROM StudentTotalMarks;

	--Row_Number
--This function will rank the column sequentially. Starting with 1 and then incrementing by 1 (eg.1,2,3,4), 
--regardless of the same data in the column to be ranked.

SELECT StudentName, MarksObtained,TotalMarks,
ROW_NUMBER() OVER(ORDER BY MarksObtained DESC) AS Ranks
FROM StudentTotalMarks

--Rank
SELECT StudentName, MarksObtained,
RANK() Over(ORDER BY MarksObtained DESC) AS Ranks
FROM StudentTotalMarks
                
--Dense_Rank
SELECT StudentName, MarksObtained, 
DENSE_RANK() OVER(ORDER BY MarksObtained DESC) AS Ranks 
FROM StudentTotalMarks


        