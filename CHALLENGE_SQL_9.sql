CREATE TABLE titles (
  title_id VARCHAR(30) NOT NULL PRIMARY KEY,
  title VARCHAR(30) NOT NULL
);
CREATE TABLE employees (
  emp_no int NOT NULL PRIMARY KEY,
  emp_title_id VARCHAR(30) NOT NULL,
  birth_date DATE NOT NULL,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  sex VARCHAR(30) NOT NULL,
  hire_date DATE NOT NULL,
  FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);
CREATE TABLE departments (
  dept_no VARCHAR(30) NOT NULL PRIMARY KEY,
  dept_name VARCHAR(30) NOT NULL
);
CREATE TABLE dept_manager (
  dept_no VARCHAR(30) NOT NULL,
  emp_no int NOT NULL,
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  PRIMARY KEY (dept_no,emp_no)
  );
CREATE TABLE salaries (
  emp_no int NOT NULL PRIMARY KEY,
  salary int NOT NULL,
  FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_emp (
	emp_no int NOT NULL,
	dept_no VARCHAR(30) NOT NULL,
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);
