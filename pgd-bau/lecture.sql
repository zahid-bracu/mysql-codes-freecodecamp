--primary key 🔑
--foreign key = Gray Key

SELECT 'HELLO WORLD';
SELECT 1+2;

--show all database;
SHOW database;

-- create database
CREATE DATABASE University;

--Use / enter into a databse;
USE University;

--show all table
SHOW TABLES;

--describe a table;
DESCRIBE tableName;


-- show all data from a particuler database
SELECT * FROM Advisor;

--select column with condition
SELECT s_ID, i_ID FROM ADVISOR WHERE s_ID>30000, i_ID>2000;


--select with another condition
select * from classroom where building='packard';


---count values;
select count(*) from classroom;

--- limit the data
select * from classroom limit 6;

---skip the first one
select * from classroom 2 offset 4;


---show table information 
show table status;

--- show particuler table information
show table status like 'classroom';


--- describe 
show create table classroom;