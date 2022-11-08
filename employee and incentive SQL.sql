TASK
/* 3. create table given below : employee and incentive */

/* create employee table */
CREATE TABLE Employee
(
   Employee_id int(100) PRIMARY KEY AUTO_INCREMENT,
   first_name varchar(100),
   last_name varchar(100),
   salary varchar(100),
   joining_date varchar(100),
   Department varchar(100)    
)

/* data insert into employee table */
INSERT INTO employee(first_name,last_name,salary,joining_date,Department) VALUES('john','abraham',1000000,'01-jan-13 12.00.00 am','banking');
INSERT INTO employee(first_name,last_name,salary,joining_date,Department) VALUES('michael','clarke',800000,'01-jan-13 12.00.00 am','insurance');
INSERT INTO employee(first_name,last_name,salary,joining_date,Department) VALUES('roy','thomas',700000,'01-feb-13 12.00.00 am','banking');
INSERT INTO employee(first_name,last_name,salary,joining_date,Department) VALUES('tom','jose',600000,'01-feb-13 12.00.00 am','insurance');
INSERT INTO employee(first_name,last_name,salary,joining_date,Department) VALUES('jerry','pinto',650000,'01-feb-13 12.00.00 am','insurance');
INSERT INTO employee(first_name,last_name,salary,joining_date,Department) VALUES('philip','mathew',750000,'01-jan-13 12.00.00 am','services');
INSERT INTO employee(first_name,last_name,salary,joining_date,Department) VALUES('testname1','123',650000,'01-jan-13 12.00.00 am','services');
INSERT INTO employee(first_name,last_name,salary,joining_date,Department) VALUES('testname2','lname%',600000,'01-feb-13 12.00.00 am','insurance')

/* create incentive table */
CREATE TABLE incentive
(
   Employee_ref_id int(100),
   incentive_date varchar(100),
   incentive_amount int(100),
    
   FOREIGN KEY incentive(Employee_ref_id) REFERENCES employee(employee_id)
)

/* data insert into incentive table */
INSERT INTO incentive(Employee_ref_id,incentive_date,incentive_amount) VALUES(1,'01-feb-13',5000);
INSERT INTO incentive(Employee_ref_id,incentive_date,incentive_amount) VALUES(2,'01-feb-13',3000);
INSERT INTO incentive(Employee_ref_id,incentive_date,incentive_amount) VALUES(3,'01-feb-13',4000);
INSERT INTO incentive(Employee_ref_id,incentive_date,incentive_amount) VALUES(1,'01-jan-13',4500);
INSERT INTO incentive(Employee_ref_id,incentive_date,incentive_amount) VALUES(2,'01-jan-13',3500)

/* A. Get First_Name from employee table using Tom name “Employee Name”. */
      ans : SELECT first_name FROM `employee` WHERE Employee_id=4;

/* B. Get FIRST_NAME, Joining Date, and Salary from employee table. */
      ans : SELECT first_name,joining_date,salary FROM `employee`

/* C. Get all employee details from the employee table order by First_Name Ascending and Salary descending? */
      ans : SELECT * FROM employee ORDER BY first_name ASC;
            SELECT * FROM employee ORDER BY salary DESC;

/* D. Get employee details from employee table whose first name contains ‘J’. */
      ans : SELECT * FROM `employee` WHERE first_name LIKE ‘j%’

/* E. Get department wise maximum salary from employee table order by salary ascending? */
      ans : SELECT first_name,Department,MAX(salary) FROM `employee` GROUP BY Department ORDER by salary ASC;

/* F. Select first_name, incentive amount from employee and incentives table for 
      those employees who have incentives and incentive amount greater than 3000. */
      ans : SELECT first_name,incentive_amount FROM incentive join employee ON 
	      incentive.Employee_ref_id=employee.Employee_id AND incentive_amount>3000
	        
/* G. Create After Insert trigger on Employee table which insert records in view table. */
      ans :
/* create view table */
CREATE TABLE view_table
(
    first_nameT varchar(100),
    last_nameT varchar(100),
    salaryT int (100),
    joining_dateT varchar(100),
    department varchar(100),
    date_time timestamp
)

/* create trigger */

DELIMITER $$
CREATE TRIGGER insert_trigger AFTER INSERT ON employee FOR EACH ROW
BEGIN 
INSERT INTO view_table(first_nameT,last_nameT,salaryT,joining_dateT,departmentT)
VALUES(new.first_name,new.last_name,new.salary,new.joining_date,new.department);
END
$$

/* H. Get employee details from employee table whose joining month is “January”. */ 
      ans : SELECT * FROM `employee` WHERE joining_date LIKE '%jan%'

/* I. Get department, total salary with respect to a department from employee table order by total salary descending. */
      ans : SELECT sum(salary),Department FROM `employee` GROUP BY Department ORDER BY `sum(salary)` DESC


/* J. Select 2nd Highest salary from employee table. */
      ans : SELECT MAX(SALARY) FROM employee WHERE SALARY < (SELECT MAX(SALARY) FROM employee);
