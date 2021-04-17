--create database:
CREATE DATABASE yelp;

--show all databses;
show databases;


--switch to database
use yelp;


--delete database
Delete database yelp;

--create table
 create table student(
    student_id INT PRIMARY KEY UNIQUE AUTO_INCREMENT NOT NULL, --this sequence is very important
    name VARCHAR(20),
    class VARCHAR(20) DEFAULT 'undecided'
    );

--show current database tables
show tables;

--delete a table
Delete Table restaurants;

--descirbe one database table
descirbe restaurants;
descirbe table restaurants;


--alter table
ALTER TABLE restaurants ADD Email varchar(255);
ALTER TABLE restaurants DROP Email;

--insert data
INSERT INTO restaurants(student_id,name) VALUES (1,"zahid");

--show all data
SELECT * FROM restaurants;