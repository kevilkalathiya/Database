/* TASK 4. create table given below : salesperson and customer */

/* create salesperson table */
CREATE TABLE salesperson
(
    sNo int(100) PRIMARY KEY,
    sName varchar(100),
    city varchar(100),
    commission double(53)
)

/* data insert into salesperson table */
INSERT INTO salesperson (sNo,sName,city,commission) VALUES (1001,'peel','london',0.12);
INSERT INTO salesperson (sNo,sName,city,commission) VALUES (1002,'serres','san jose',0.13);
INSERT INTO salesperson (sNo,sName,city,commission) VALUES (1004,'motika','london',0.11);
INSERT INTO salesperson (sNo,sName,city,commission) VALUES (1007,'rafkin','barcelona',0.15);
INSERT INTO salesperson (sNo,sName,city,commission) VALUES (1003,'axelrod','new yourk',0.1)

/* create customer table */
CREATE TABLE customer
(
   Cnm int (100) PRIMARY KEY,
   Cname varchar (100),
   city varchar(100),
   rating int (100),
   Sno int(100),
    
   FOREIGN KEY customer (Sno) REFERENCES salesperson (sNo)
)

/* data insert into customer table */
INSERT INTO customer(Cnm, Cname, city, rating, Sno) VALUES (201,'hoffman','london',100,1001);
INSERT INTO customer(Cnm, Cname, city, rating, Sno) VALUES (202,'giovanne','rome',200,1003);
INSERT INTO customer(Cnm, Cname, city, rating, Sno) VALUES (203,'liu','san jose',300,1002);
INSERT INTO customer(Cnm, Cname, city, rating, Sno) VALUES (204,'grass','barcelona',100,1002);
INSERT INTO customer(Cnm, Cname, city, rating, Sno) VALUES (206,'clemens','london',300,1007);
INSERT INTO customer(Cnm, Cname, city, rating, Sno) VALUES (207,'pereira','rome',100,1004)

/* A. Names and cities of all salespeople in London with commission above 0.12 */
      ans : SELECT * FROM `salesperson` WHERE city='london' AND commission>0.12

/* B. All salespeople either in Barcelona or in London */
      ans : SELECT * FROM `salesperson` WHERE city='london' OR city='barcelona'

/* C. All salespeople with commission between 0.10 and 0.12. (Boundary values should be excluded). */   
      ans : SELECT * FROM `salesperson` WHERE commission>0.10 AND commission<0.12

/* D. All customers excluding those with rating <= 100 unless they are located in Rome. */  
      ans : SELECT * FROM `customer` WHERE NOT rating<=100 OR city='rome'
