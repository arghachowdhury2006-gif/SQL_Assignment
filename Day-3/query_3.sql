create database college2;
use college2;


/*----- PROBLEM ==> 1 -----*/
create table employee(
EMPLOYEE_ID	int,
LAST_NAME VARCHAR(25),
JOB_ID VARCHAR(10),
SALARY float(8,2),
COMM_PCT float (4,2),
MGR_ID int,
DEPARTMENT_ID int
);


/*----- PROBLEM ==> 2 -----*/
INSERT INTO EMPLOYEE
(EMPLOYEE_ID, LAST_NAME, JOB_ID, SALARY, COMM_PCT, MGR_ID, DEPARTMENT_ID)
VALUES
(198, 'Connell', 'SH_CLERK', 2600, 2.5, 124, 50),
(199, 'Grant', 'SH_CLERK', 2600, 2.2, 124, 50),
(200, 'Whalen', 'AD_ASST', 4400, 1.3, 101, 10),
(201, 'Hartstein', 'IT_PROG', 6000, NULL, 100, 20),
(202, 'Fay', 'AC_MGR', 6500, NULL, 210, 20),
(203, 'Mavris', 'AD_VP', 7500, NULL, 101, 40),
(204, 'Baer', 'AD_PRES', 3500, 1.5, 101, 90),
(205, 'Higgins', 'AC_MGR', 2300, NULL, 101, 60),
(206, 'Gitz', 'IT_PROG', 5000, NULL, 103, 60),
(100, 'King', 'AD_ASST', 8956, 0.3, 108, 100),
(101, 'Kochar', 'SH_CLERK', 3400, 1.3, 118, 30);


/*----- PROBLEM ==> 3 -----*/
select employee_id, last_name, job_id 
from employee;


/*----- PROBLEM ==> 4 -----*/
select * from employee 
where DEPARTMENT_ID = 60;


/*----- PROBLEM ==> 5 -----*/
select * from employee 
where last_name  = 'King';


/*----- PROBLEM ==> 6 -----*/
select distinct JOB_ID as JOB_TITLE 
from employee;


/*----- PROBLEM ==> 7 -----*/
select last_name, salary, salary+300 
as Increased_Salary
from employee;


/*----- PROBLEM ==> 8 -----*/
select last_name, salary, (salary*12)+100 
as annual_compensation
from employee;


/*----- PROBLEM ==> 9 -----*/
select * from employee 
where COMM_PCT is not NULL;


/*----- PROBLEM ==> 10 -----*/
select * from employee 
where COMM_PCT is NULL;


/*----- PROBLEM ==> 11 -----*/
select Employee_id, Department_id, Salary 
from employee
where salary>5000;


/*----- PROBLEM ==> 12 -----*/
select Last_Name, Salary 
from employee 
where salary between 4000 and 7000;


/*----- PROBLEM ==> 13 -----*/
select * from employee 
where salary in (6000, 6500, 7000);


/*----- PROBLEM ==> 14 -----*/
select * from employee 
where DEPARTMENT_ID in (10,20,30,50);


/*----- PROBLEM ==> 15 -----*/
select * from employee 
where salary != 5000;


/*----- PROBLEM ==> 16 -----*/
select * from employee 
where JOB_ID like '%CLERK%';


/*----- PROBLEM ==> 17 -----*/
update employee set JOB_ID = 'Grade_A'
where salary > 5000;
SELECT * FROM EMPLOYEE;


/*----- PROBLEM ==> 18 -----*/
select * from employee 
where JOB_ID like '%CLERK%'
or JOB_id like '%PROG%'
or JOB_id like '%ASST%';


/*----- PROBLEM ==>19 -----*/
select * from employee 
where JOB_ID like '%CLERK%' and salary < 3000;


/*----- PROBLEM ==> 20 -----*/
select Last_Name, Mgr_id from employee 
where MGR_ID = 101 and salary > 3000;













