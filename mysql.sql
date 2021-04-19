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

--conditional select
SELECT * FROM student WHERE student_id<='4';
SELECT * FROM student WHERE class IN ('ix','12th');


--update data
UPDATE servers SET Email = 'zahid@gmail.com' WHERE Server_name='Local Host';
UPDATE  employee SET name='Zahid Rahman' WHERE name='Zahid' AND email='zahid.mym@gmail.com';
UPDATE  employee SET name='Zahid Rahman' WHERE name='Zahid' OR email='zahid.mym@gmail.com';
UPDATE  employee SET name='Zahid Rahman', email='md.zahidur.rahman@g.bracu.ac.bd' WHERE email='zahid.mym@gmail.com';


--delete data
DELETE FROM  employee WHERE name='Zahid' AND email='zahid.mym@gmail.com';



--Company---

CREATE TABLE employee(
    emp_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    first_name VARCHAR(40),
    last_name VARCHAR(40),
    birth_date DATE,
    sex VARCHAR(1),
    salary INT,
    super_id INT,
    branch_id INT
    );



CREATE TABLE branch(
     branch_id INT PRIMARY KEY,
     branch_name VARCHAR(40),
     mgr_id INT,
     mgr_start_date DATE,
     FOREIGN KEY(mgr_id) REFERENCES employee(emp_id) ON DELETE SET NULL -- foreign key 
     );


ALTER TABLE employee ADD FOREIGN KEY (branch_id) REFERENCES branch(branch_id) ON DELETE SET NULL;
ALTER TABLE employee ADD FOREIGN KEY (super_id) REFERENCES employee(emp_id) ON DELETE SET NULL;



Create Table client(
     client_id INT PRIMARY KEY,
     client_name VARCHAR(255),
     branch_id INT,
     FOREIGN KEY (branch_id) REFERENCES branch(branch_id) ON DELETE CASCADE
     );



CREATE TABLE works_with(
    emp_id INT,
    client_id INT,
    total_sales INT,
    PRIMARY KEY(emp_id, client_id),
    FOREIGN KEY(emp_id) REFERENCES employee(emp_id) ON DELETE CASCADE,
    FOREIGN KEY(client_id) REFERENCES client(client_id) ON DELETE CASCADE
    );



CREATE TABLE branch_supplier(
    branch_id INT,
    supplier_name VARCHAR(40),
    supply_type VARCHAR(40),
    PRIMARY KEY(branch_id, supplier_name),
    FOREIGN KEY(branch_id) REFERENCES branch(branch_id) ON DELETE CASCADE
    );