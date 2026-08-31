create database college1;
use college1;
/*----- PROBLEM ==> 1 & 2 -----*/
SELECT * FROM employee;
DESC employee;


/*----- PROBLEM ==> 3 -----*/
create table student(
Roll int primary key,	
Name Varchar (30),	
Age	int,
Course Varchar (5) unique,		
Math float (6, 2),	
Physics	float (6, 2),
Computer float (6, 2),
Birthday Date
);


/*----- PROBLEM ==> 4 & 5 -----*/
create table MSe like student; 
DESC mse;


/*----- PROBLEM ==> 6 & 7 -----*/
create table MCA as
select 
Roll,
Name as First_Name,
Age,
Course as Department,		
Math,	
Physics,
Computer,
Birthday
from student;
describe MCA;


/*----- PROBLEM ==> 8 -----*/
insert into student
(Roll, Name, Age, Course, Math, Physics, Computer, Birthday)
values
(1, 'Rahul', 19, 'BCA', 79.5, 67, 89, '1993-06-15'),
(2, 'Kunal', 21, 'BCA', 68, 76, 59.5, '1991-08-16'),
(3, 'Aditi', 20, 'MSc', 90, 73, 56, '1992-09-20'),
(4, 'Sumit', 20, 'MCA', 57.5, 78, 81, '1991-12-07'),
(5, 'Anirban', 22, 'MCA', 80, 68, 63, '1994-09-15'),
(6, 'Kumkum', 21, 'BCA', 72, 54.5, 60, '1995-02-08'),
(7, 'Suman', 21, 'BCA', 91.5, 32, 61, '1994-03-10'),
(8, 'Rohit', 22, 'MSc', 85, 76, 92, '1992-04-19');


/*----- PROBLEM ==> 9 & 10 -----*/
select * from student;
select * from student where Roll = 5;


/*----- PROBLEM ==> 11 -----*/
select roll, name, Math, Physics, Computer 
from student;

/*----- PROBLEM ==> 12 -----*/
select * from student 
where Course = 'BCA';


/*----- PROBLEM ==> 13 & 14 -----*/
insert into MCA 
select * from student where course = 'MCA';
insert into mse 
select * from student where course = 'MSc';


/*----- PROBLEM ==> 15 -----*/
Desc student;
desc MCA;

/*----- PROBLEM ==> 16 -----*/
select Course, Roll, Name, Age, Math, Physics, Computer, Birthday 
from student;


/*----- PROBLEM ==> 17 -----*/
update student set Math = 95
where Roll = 7;
SELECT * FROM Student
WHERE Roll = 7;

/*----- PROBLEM ==> 18 -----*/
update MCA 
set First_Name = 'Sumitava'
where Roll = 4;
SELECT * FROM mca
WHERE Roll = 4;


/*----- PROBLEM ==> 19 -----*/
delete from student
where Roll = 2;
SELECT * FROM Student;


/*----- PROBLEM ==> 20 -----*/
delete from student;
SELECT * FROM Student;
