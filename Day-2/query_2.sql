create database company;
use company;

/*----- PROBLEM ==> 1 -----*/
create table emp1(
id int,
name varchar(10),
basic float(6,2),
designation varchar(10),
age int
);


/*----- PROBLEM ==> 2 & 3 -----*/
alter table emp1
modify basic int ,
modify name varchar(15);


/*----- PROBLEM ==> 4 -----*/
create table EMP_trainee like emp1;
alter table EMP_trainee 
rename column id to Emp_id;


/*----- PROBLEM ==> 5 -----*/
insert into emp1(id, name, basic, designation, age)
values(1, 'Rohit', 6700, 'Manager', 24),
(2, 'Sunil', 6200, 'Engineer', 27),
(3, 'Payal', 6300, 'Engineer', 25),
(4, 'Kunal', 6700, 'Trainee', 28),
(5, 'Sunita', 6230, 'Trainee', 26),
(6, 'Bimal', 7000, 'Trainee', 25);


/*----- PROBLEM ==> 6 -----*/
insert into EMP_trainee
select * from emp1
where designation = 'trainee';


/*----- PROBLEM ==> 7 -----*/
alter table emp1
add column skill varchar(10),
add column doj date;

update emp1 set skill = 'c', doj = '2025-10-12' where id = 1;
UPDATE EMP1 SET skill = 'Java', doj = '2026-02-15' WHERE ID = 2;
UPDATE EMP1 SET skill = 'Python', doj = '2026-03-10' WHERE ID = 3;
UPDATE EMP1 SET skill = 'SQL', doj = '2026-01-20' WHERE ID = 4;
UPDATE EMP1 SET skill = 'HTML', doj = '2026-02-20' WHERE ID = 5;
UPDATE EMP1 SET skill = 'C++', doj = '2026-03-15' WHERE ID = 6;


/*----- PROBLEM ==> 8 -----*/
UPDATE EMP1
SET Basic = Basic + 500
WHERE Designation = 'Engineer';


/*----- PROBLEM ==> 9 -----*/
alter table emp1
rename column Age to Age_in_Years;


/*----- PROBLEM ==> 10 -----*/
alter table EMP_trainee 
drop column age;


/*----- PROBLEM ==> 11 -----*/
rename table  emp1 to  EMP_Mgr_Engr;


/*----- PROBLEM ==> 12 -----*/
Truncate EMP_Mgr_Engr; 










