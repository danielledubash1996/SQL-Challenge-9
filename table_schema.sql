create table departments(
	dept_no varchar(20),
	dept_name varchar(50),
	PRIMARY KEY (dept_no));

CREATE TABLE dept_emp(
	emp_no INT,
	dept_name VARCHAR(4),
	PRIMARY KEY (dept_name, emp_no),
	FOREIGN KEY (dept_name) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no));

create table salaries(
	emp_no int,
	salary int,
	PRIMARY KEY(emp_no),
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no));

create table employees(
	emp_no int,
	emp_title_id varchar(50),
	birth_date date,
	first_name varchar(50),
	last_name varchar(50),
	sex varchar(10),
	hire_date date,
	PRIMARY KEY(emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id));

create table dept_manager(
	dept_no varchar(20),
	emp_no int,
	PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no));

create table titles(
	title_id varchar(10),
	title varchar(50),
	PRIMARY KEY(title_id));