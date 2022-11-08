/* TASK 1. create table name : student and exam */

/* create student table */
CREATE TABLE student
(  
    rollno int (100) PRIMARY KEY AUTO_INCREMENT,
    name varchar(100),
    branch varchar (100)
)

/* data insert into student table */
INSERT INTO student (name,branch) VALUES ('kevil','computer science');
INSERT INTO student (name,branch) VALUES ('jenish','computer science');
INSERT INTO student (name,branch) VALUES ('jinal','information technology')

/* create exam table */
CREATE TABLE exam
(
    rollno int (100),
    subject_code varchar (100),
    marks int (100),
    branch_code varchar (100),
    
    FOREIGN KEY exam(rollno) REFERENCES student (rollno)
)

/* data insert into exam table */
INSERT INTO exam (rollno,subject_code,marks,branch_code) VALUES(1,'cs11',50,'cs');
INSERT INTO exam (rollno,subject_code,marks,branch_code) VALUES(1,'cs12',60,'cs');
INSERT INTO exam (rollno,subject_code,marks,branch_code) VALUES(2,'cs11',66,'cs');
INSERT INTO exam (rollno,subject_code,marks,branch_code) VALUES(2,'cs12',70,'cs');
INSERT INTO exam (rollno,subject_code,marks,branch_code) VALUES(3,'it101',45,'it');
INSERT INTO exam (rollno,subject_code,marks,branch_code) VALUES(3,'it102',50,'it')
