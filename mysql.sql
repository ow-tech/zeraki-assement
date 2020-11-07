Question 4

-- From the terminal;  depending on setting access mysql shell, 
-- CREATE DATABASE IF NOT EXISTS education; 
-- "GRANT ALL ON *education* TO 'user_name'@'localhost' IDENTIFIED BY 'password';"
-- "FLUSH PRIVILEGES;"
-- and hence connect to the database.

a):
CREATE TABLE institution(
	institution_id INT(11) PRIMARY KEY,
    name VARCHAR(250)
);
CREATE TABLE course(
	course_id INT(11) PRIMARY KEY ,
    name VARCHAR(250),
    institution INT(11),
    FOREIGN KEY (institution) REFERENCES institution(institution_id) ON DELETE CASCADE
);
CREATE TABLE student(
	student_id INT(11) AUTO_INCREMENT PRIMARY KEY,
    name  VARCHAR(250),
    course INT(11),
    FOREIGN KEY (course) REFERENCES course(course_id) ON DELETE CASCADE
);

-- populate the education database.
-- institution table 
INSERT INTO institution VALUES(444556, 'University College Dublin');
INSERT INTO institution VALUES(556655, 'University College London');
-- course table 
INSERT INTO course VALUES(303, 'Bsc. Actuarial Science', 444556);
INSERT INTO course VALUES(505, 'MPhil Genomics', 556655);

-- student table
INSERT INTO student VALUES(1, 'Ken Wamuya Elignton', 303);
INSERT INTO student(name, course) VALUES('MPhil Genomics', 505); 



b):
-- query

SELECT i.name AS `INSTITUTION NAME`, c.name AS `COURSE NAME`, count(s.student_id) AS `NUMBER OF STUDENT(S)`
 FROM course c
 INNER JOIN institution i
 ON i.institution_id = c.institution
 INNER JOIN student s
 ON c.course_id = s.course
 GROUP BY `INSTITUTION NAME`,`COURSE NAME`
 ;