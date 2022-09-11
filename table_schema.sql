create table departments (
	dept_no varchar(10) PRIMARY KEY
	,dept_name varchar(30)
	);

create table dept_employees (
	emp_no int
	,dept_no varchar(10)
);

create table dept_managers (
	dept_no varchar(10)
	,emp_no int UNIQUE
);

create table employees (
	emp_no int
	,emp_title_id varchar(30)
	,birth_date date
	,first_name varchar(20)
	,last_name varchar(20)
	,sex char(1)
	,hire_date date
);

create table salaries (
	emp_no int PRIMARY KEY
	,salary int
);

create table titles (
	title_id varchar(30) UNIQUE
	,title varchar(30) UNIQUE
);
