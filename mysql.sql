--create database:
CREATE DATABASE yelp;

--show all databses;
show databases;


--switch to database
use yelp;


--delete database
Drop database yelp;

--create table
 create table student(
    student_id INT PRIMARY KEY UNIQUE AUTO_INCREMENT NOT NULL, --this sequence is very important
    name VARCHAR(20),
    class VARCHAR(20) DEFAULT 'undecided'
    );

--show current database tables
show tables;

--delete a table
Drop Table restaurants;

--descirbe one database table
descirbe restaurants;
descirbe table restaurants;


--alter table
ALTER TABLE restaurants ADD Email varchar(255);
ALTER TABLE restaurants DROP Email;

--insert data
INSERT INTO restaurants(student_id,name) VALUES (1,"zahid");

--show  data
SELECT * FROM restaurants;
SELECT name FROM student ORDER BY student_id ASC;
SELECT name FROM student ORDER BY student_id DESC;
SELECT name FROM student ORDER BY student_id DESC LIMIT 2;

--update data
UPDATE servers SET Email = 'zahid@gmail.com' WHERE Server_name='Local Host';
UPDATE  employee SET name='Zahid Rahman' WHERE name='Zahid' AND email='zahid.mym@gmail.com';
UPDATE  employee SET name='Zahid Rahman' WHERE name='Zahid' OR email='zahid.mym@gmail.com';
UPDATE  employee SET name='Zahid Rahman', email='md.zahidur.rahman@g.bracu.ac.bd' WHERE email='zahid.mym@gmail.com';


--delete data
DELETE FROM  employee WHERE name='Zahid' AND email='zahid.mym@gmail.com';