--EXERCISE 2
-- CREATE TABLE spartan_table(
--     trainee_id INT IDENTITY PRIMARY KEY,
--     trainee_title VARCHAR(4),
--     trainee_firstname VARCHAR(10),
--     trainee_lastname VARCHAR(10),
--     university_attended VARCHAR(50),
--     university_course VARCHAR(20),
--     university_result VARCHAR (4),
-- )


INSERT INTO spartan_table
(trainee_title, trainee_firstname, trainee_lastname, university_attended, university_course, university_result)
VALUES
('Miss', 'Alisha', 'Parmar', 'University of Birmingham', 'Mathematics', '2:1' )

SELECT * FROM spartan_table
