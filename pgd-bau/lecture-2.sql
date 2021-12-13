--CREATE TABLE 
CREATE TABLE chatro(
    ID INT NOT NULL AUTO_INCREMENT,
    NAME VARCHAR(30) NOT NULL,
    COURSE INT NULL,
    PRIMARY KEY(ID)
    );


-- ALTER TABLE
ALTER TABLE student ADD CONSTRAINT fk_course FOREIGN KEY (course) REFERENCES course (id) ON UPDATE CASCADE;

-- cross join
SELECT * FROM student CROSS JOIN course;

SELECT * FROM student, course;

--------------------------------- inner join -----------------------
SELECT student.name , course.name FROM student INNER JOIN course ON student.course=course.id;

--or

SELECT student.name, course.name FROM student JOIN course on student.course=course.id;

--or
SELECT student.name , course.name FROM student, course WHERE student.course=course.id;


---------------- Left Join ---------------------
SELECT student.name, course.name FROM student LEFT JOIN course ON student.course = course.id;

------------------ right join ---------------------
SELECT student.name , course.name FROM student RIGHT JOIN course ON student.course=course.id;

------------------- right join using  left join -----------------
SELECT student.name, course.name FROM student RIGHT JOIN course ON student.course=course.id;

SELECT student.name, course.name FROM student LEFT JOIN course ON student.course=course.id;

-------------------- outer join ----------------------
SELECT student.name, course.name FROM student RIGHT JOIN course ON student.course=course.id 
UNION 
SELECT student.name, course.name FROM student LEFT JOIN course ON student.course=course.id;

---------------------- natural join code ----------------------
 SELECT name from student WHERE student.course=course.id;