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


-->step One
INSERT INTO branch(branch_id,branch_name,mgr_start_date) VALUES(1,'Dhaka','2012-02-01');

-->step two
INSERT INTO employee(emp_id,first_name,last_name,birth_date,sex,salary,branch_id,super_id) 
VALUES(100,'Zahid','Rahman','1995-08-09','M',52000,1,NULL);

-->step three
UPDATE branch SET mgr_id=100 WHERE branch_id=1


-->step four
INSERT INTO employee(first_name,last_name,birth_date,sex,salary,branch_id,super_id) 
VALUES('Abdul','Malek','1965-02-01','M',82000,Null,100);


-->step five
INSERT INTO branch(branch_name,mgr_start_date) VALUES('Khulna','2002-11-05');