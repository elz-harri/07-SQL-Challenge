CREATE TABLE departments (
    dept_no varchar(30)   NOT NULL,
    dept_name varchar(30)   NOT NULL,
	Primary Key (dept_no)
);

CREATE TABLE dept_emp (
    emp_no int   NOT NULL,
    dept_no varchar(30)   NOT NULL,
	Foreign Key (dept_no) References departments (dept_no)
);

CREATE TABLE dept_manager (
    dept_no varchar(30)   NOT NULL,
    emp_no int   NOT NULL,
    Foreign	Key (dept_no) References departments (dept_no),
	Primary Key (emp_no)
);

CREATE TABLE titles (
    title_id varchar(30)   NOT NULL,
    title varchar(30)   NOT NULL,
	primary key (title_id)  
);
CREATE TABLE employees (
    emp_no int   NOT NULL,
    emp_title_id varchar(30)   NOT NULL,
    birth_date date   NOT NULL,
    first_name varchar(30)   NOT NULL,
    last_name varchar(30)   NOT NULL,
    sex varchar(30)   NOT NULL,
    hire_date date   NOT NULL,
    PRIMARY KEY (emp_no),
	Foreign key (emp_title_id) references titles (title_id)
);

CREATE TABLE salaries (
    emp_no int   NOT NULL,
    salary int   NOT NULL,
    Foreign Key (emp_no) references employees (emp_no)
	
);