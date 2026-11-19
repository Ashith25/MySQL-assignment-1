create database employee;
use employee;
create table departments(
department_id int primary key auto_increment,
department_name varchar(100) unique not null);

select * from department;

create table location(
location_id int primary key auto_increment,
location_name varchar(30) unique not null);
select * from location;
create table employees(
employee_id int primary key auto_increment,
employee_name varchar(50) unique not null,
gender enum ("M","F"),
age int,
hire_date date,
designation varchar(100),
department_id int,
location_id int,
salary decimal(10,2),
foreign key(department_id) references department (department_id),
foreign key(location_id) references location (location_id));

alter table employees add column email varchar(50) unique;
alter table employees modify column designation varchar(50);
alter table employees drop column age;
alter table employees rename column hire_date to date_of_joining;

rename table departments to departments_info;
rename table location to locations;

truncate table employees;
select * from departments_info;
select *  from locations;
select * from employees;

drop table employees;
drop database employee;
drop database if exists employee;

create database employee;
use employee;
create table departments(
department_id int primary key auto_increment,
department_name varchar(50) unique not null);
create table Location (
Location_ID int primary key auto_increment,
Location varchar (30)unique not null);
create table Employees(
Employee_ID int primary key auto_increment,
Employee_Name varchar(50) not null,
Gender enum ('M','F'),
Age int check (Age>=18),
Hire_Date date default (Current_Date),
Designation varchar(100),
Department_ID int,
Location_ID int,
Salary decimal(10,2),
Foreign key(Department_ID) references Departments (Department_ID),
Foreign key(Location_ID) references Location (Location_ID));
drop table employees;
create table Employees (
Employee_ID int primary key auto_increment,
Employee_Name varchar(50) not null,
Gender enum ('M','F'),
Age int check (Age>=18),
Hire_Date date default (Current_Date),
Designation varchar(100),
Department_ID int,
Location_ID int,
Salary decimal(10,2),
Foreign key(Department_ID) references Departments (Department_ID),
Foreign key(Location_ID) references Location (Location_ID));

