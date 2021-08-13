DROP TABLE IF EXISTS student;
CREATE TABLE student(
	`id` int NOT NULL AUTO_INCREMENT,
	`name` varchar(30) NOT NULL,
	`course` int NULL,
	PRIMARY KEY (`id`)
) ;

DROP TABLE IF EXISTS course;
CREATE TABLE `course` (
	`id` int NOT NULL AUTO_INCREMENT,
	`name` varchar(50) NOT NULL,
	PRIMARY KEY (`id`)
);

insert into course (name) 
	values ('HTML5'), ('CSS3'), 
	('JavaScript'),  ('PHP'),  ('MySQL');

insert into student (name, course)
	values ('Alice', 1), ('Bob', 1),  
	('Caroline', 2), ('David', 5), 
	('Emma', NULL);
	
ALTER TABLE `student` 
	ADD CONSTRAINT `FK_course`
	FOREIGN KEY (`course`) REFERENCES `course` (`id`)
	ON UPDATE SET NULL
	ON DELETE SET NULL;

ALTER TABLE student 
	DROP FOREIGN KEY FK_course;
