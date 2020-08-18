drop table Employee;
drop table Title;
drop table Department_Employee;
drop table Departments;
drop table Salary;
drop table Department_Manager;

create table Employee (
	EmployeeID int Primary Key,
	Employee_title varchar,
	dob varchar,
	first_name varchar,
	last_name varchar,
	sex varchar,
	hire_date varchar
);

create table Title (
	titleID varchar Primary Key,
	title varchar
);

create table Department_Employee (
	EmployeeID int,
	departmentID varchar,
	PRIMARY KEY(EmployeeID, departmentID)
);

create table Departments (
	departmentID varchar primary Key,
	department_name varchar
);

create table Salary (
	EmployeeID INT primary key,
	salary int
);

create table Department_Manager (
	DepartmentID varchar,
	EmployeeID int primary key
);

