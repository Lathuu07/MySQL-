-- CREATE (DATABASE AND TABLE)
-- CREATE database database_name 
create database Employee;
Use Employee;

-- CREATE TABLE TABLE_NAME 
create table Departments(
department_Id int,
department_Name varchar(100)
);
Select * from departments;

create table Location(
location_Id int,
location varchar(50)
);
select * from Location;

create table Employees(
employee_id int,
employee_name varchar(50),
gender enum('M','F'),
age int,
hire_date date,
designation varchar(100),
department_id int,
location_id int,
salary decimal(10,2)
);

select * from Employees;

-- ALTER TABLE TABLE_NAME ADD COLUMN EMAIL
alter table Employees add column email varchar(100);
select * from Employees;

Use Employee;
-- INCREASE THE LENGHT FOR DESIGNATION 
-- ALTER TABLE TABLE_NAME MODIFY COLUMN DESIGNATION VARCHAR(200)
alter table Employees modify column designation varchar(200);

-- ALTER TABLE TABLE_NAME DROP COLUMN AGE 
alter table Employees drop column age;
select * from Employees;

-- ALTER TABLE TABLE_NAME RENAME COLUMN HIRE_DATE TO DATE_OF_JOINING
alter table employees rename column hire_date to date_of_joining;
select * from employees;
select date_of_joining from Employees;

-- RENAME TABLE TABLE_NAME TO NEW TABLE_NAME 
rename table departments to departments_info;
select * from departments_info;

-- RENAME TABLE TABLE_NAME TO NEW TABLE_NAME 
rename table location to locations;
select * from locations;

-- INSERT INTO TABLE
insert into employees
(employee_id,employee_name,gender,date_of_joining,designation,department_id,location_id,salary,email)
Values
(101 , ' Latha ', 'F', '2018-12-03', 'Team Leader', 1, 3 , 40000, 'lathashrilathuuu@gmail.com'),
(102 , 'Deepa' , 'F', '2020-10-15', 'Manager' , 2, 5, 45000, 'deepashri16@gmail.com'),
(103 , 'Avinash','M' , '2016-03-22', 'Data Analyst', 1, 4 , 50000, 'avinashavi1407@gmail.com');
select * from employees;

-- TRUNCATE TABLE TABLE_NAME
truncate table employees;
select * from employees;

-- DROP TABLE TABLE_NAME
drop table employees;

-- DROP DATABASE DATABASE_NAME
drop database employee;

-- DROP DATABASE IF EXISTS DATABASE
drop database if exists employee;

create database employee;
use employee;

-- CREATE TABLE TABLE_NAME
create table Departments(
department_id INT PRIMARY key,
department_name varchar(100) NOT NULL UNIQUE 
);

select * from departments;

-- CREATE TABLE TABLE_NAME 
create table Location (
location_Id INT PRIMARY KEY auto_increment,
location_Name varchar(30) NOT NULL UNIQUE 
);

select * from Location;

use employee;
 
 -- CREATE TABLE TABLE_NAME 
 create table Employees(
 employee_id INT PRIMARY KEY,
 employee_name VARCHAR(50) NOT NULL,
 gender ENUM('M', 'F'),
 age INT NOT NULL CHECK (age >= 18),
 hire_date DATE DEFAULT (CURRENT_DATE),
 designation VARCHAR(100),
department_id INT,
location_id INT,
salary Decimal( 8,2),
email varchar(100),

foreign key(department_id)
references departments(department_id),

foreign key(location_id)
references location(location_id)
);

DESCRIBE Employees;

use employee;

-- INSERT INTO TABLE (department_id,department_name)
insert into departments(department_id,department_name)
VALUES
(2,'IT');
select * from departments;

insert into location (location_name)
Values
('Bangalore');
select * from location;

insert into employees (employee_id, employee_name, gender, age , hire_date ,designation, department_id , location_id, salary , email)
VALUES
(101, 'mary', 'F' , 35 , default , 'Team Lead', 2 , 1 , 50000.00, 'Mary123@gmail.com' );

select * from employees;





