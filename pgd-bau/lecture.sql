--primary key 🔑
--foreign key = Gray Key

SELECT 'HELLO WORLD';
SELECT 1+2;

--SHOW all database;
SHOW database;

-- CREATE database
CREATE DATABASE University;

--Use / enter into a databse;
USE University;

--SHOW all TABLE
SHOW TABLES;

--describe a TABLE;
DESCRIBE city;


-- SHOW all data FROM a particuler TABLE;
SELECT * FROM Advisor;

-- 

--SELECT column with condition
SELECT * FROM instructor WHERE salary>65000;
--AND
SELECT * FROM instructor WHERE salary>65000 AND dept_name="finance";
SELECT name FROM instructor WHERE salary>65000 AND dept_name="finance";
-- OR
SELECT name FROM instructor WHERE dept_name="finance" OR dept_name="physics";

--SHOW only distinct == no duplicate
SELECT DISTINCT dept_name FROM instructor;

-- calculation inside query
 SELECT id, name,  salary/1000 FROM instructor;

--change column nane while display
SELECT id as Roll, salary/1000 as Salary FROM instructor;


--order asc or desc;
SELECT name, salary FROM instructor ORDER BY SALARY ASC;
SELECT name, salary FROM instructor ORDER BY SALARY DESC;


--regular expression
--inside an
SELECT * FROM student WHERE name  like '%an%';
--last an
SELECT * FROM student WHERE name  like '%an';
--start an
SELECT * FROM student WHERE name  like 'an%';


-- IN
SELECT name FROM country WHERE Continent IN ('EUROPE');

---count values;
SELECT count(*) FROM classroom;

--- limit the data
SELECT * FROM classroom LIMIT 6;

---skip the first one
SELECT * FROM classroom LIMIT 2 OFFSET 1;


---SHOW TABLE information - advance level information
SHOW TABLE status;

--- SHOW particuler TABLE information
SHOW TABLE status like 'classroom';


--- describe the CREATE TABLE command;
SHOW CREATE TABLE classroom;


--- null check
SELECT * FROM test WHERE a IS NULL;
SELECT * FROM test WHERE a IS NOT NULL;



-- creating table with primary key
create table student(
     id char(7),
     name varchar(10),
     courses int,
     PRIMARY KEY (id) --declaring primary key
     );
-- create table with foreign key
create table result(
    id char(7) NOT NULL,
    result double Not Null,
    foreign key (id) references student(id)
    );

-- inserting data
insert into student values ('pgd1727','zahid',4), ('pgd1717','nazmul',5);
INSERT INTO student (id,name) VALUES ('pgd1745','sneha');


-- update data
UPDATE student SET courses=5 WHERE name='sneha';

-- add column
ALTER TABLE table_name ADD column_name data_type;
ALTER TABLE student ADD cgpa double;

-- delete column
ALTER TABLE student DROP cgpa;

-- rename table
ALTER TABLE student RENAME people;
