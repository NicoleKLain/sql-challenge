CREATE TABLE departments (
dept_no VARCHAR (4) PRIMARY KEY, 
dept_name VARCHAR (40) NOT NULL 
); 

CREATE TABLE IF NOT EXISTS employees (
emp_no INT PRIMARY KEY, 
emp_title_id VARCHAR (5) NOT NULL,
birth_date DATE NOT NULL, 
first_name VARCHAR (14) NOT NULL, 
last_name VARCHAR (16) NOT NULL, 
sex VARCHAR (1) NOT NULL,
hire_date DATE NOT NULL
);

ALTER TABLE employees
RENAME COLUMN empt_no TO emp_no;

ALTER TABLE employees
RENAME COLUMN fist_name TO first_name;

CREATE TABLE dept_emp (
emp_no INT NOT NULL,
dept_no VARCHAR (4) NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager (
dept_no VARCHAR NOT NULL, 
emp_no INT NOT NULL,
FOREIGN KEY (dept_no) REFERENCES departments(dept_no), 
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE titles (
title_id VARCHAR (5) NOT NULL,
title VARCHAR (50) NOT NULL
); 
	
CREATE TABLE salaries (
emp_no INT NOT NULL,
salary INT NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
