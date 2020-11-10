--create tables 
CREATE TABLE departments (
    dept_no varchar(30) NOT NULL,
    dept_name varchar(30) NOT NULL,
	Primary Key (dept_no)
	);

CREATE TABLE dept_emp (
    emp_no int NOT NULL,
    dept_no varchar(30) NOT NULL,
	Foreign Key (dept_no) References departments (dept_no)
);

CREATE TABLE dept_manager (
    dept_no varchar(30) NOT NULL,
    emp_no int NOT NULL,
	Primary Key (emp_no),
    Foreign	Key (dept_no) References departments (dept_no)
);

CREATE TABLE employees (
    emp_no int   NOT NULL,
    emp_title_id varchar(30) NOT NULL,
    birth_date date NOT NULL,
    first_name varchar(30) NOT NULL,
    last_name varchar(30) NOT NULL,
    sex varchar(30) NOT NULL,
    hire_date date NOT NULL,
    PRIMARY KEY (emp_no),
	Foreign key (emp_title_id) references titles (title_id)
);

CREATE TABLE salaries (
    emp_no int NOT NULL,
    salary int NOT NULL,
    Foreign Key (emp_no) references employees (emp_no)
);

CREATE TABLE titles (
    title_id varchar(30)   NOT NULL,
    title varchar(30)   NOT NULL,
	primary key (title_id)
);	

--add constraints
ALTER TABLE dept_emp ADD CONSTRAINT fk_dept_emp_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

ALTER TABLE dept_emp ADD CONSTRAINT fk_dept_emp_dept_no FOREIGN KEY(dept_no)
REFERENCES departments (dept_no);

ALTER TABLE dept_manager ADD CONSTRAINT fk_dept_manager_dept_no FOREIGN KEY(dept_no)
REFERENCES departments (dept_no);

ALTER TABLE dept_manager ADD CONSTRAINT fk_dept_manager_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

ALTER TABLE employees ADD CONSTRAINT fk_employees_emp_title_id FOREIGN KEY(emp_title_id)
REFERENCES titles (title_id);

-- verify data was imported into tables
Select * From departments
Select * From dept_emp
select * From employees
Select * From salaries
Select * From titles