--drop table if exists Titles cascade;
CREATE TABLE Titles (
    title_id VARCHAR NOT NULL,
    title VARCHAR NOT NULL,
    PRIMARY KEY (title_id)
 );
 
--drop table if exists Employees cascade; 
CREATE TABLE Employees (
    emp_no INTEGER NOT NULL,
    emp_title_id VARCHAR NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    sex VARCHAR NOT NULL,
    hire_date DATE NOT NULL,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_title_id) REFERENCES Titles (title_id)
);    

--drop table if exists Departments cascade;
CREATE TABLE Departments(
    dept_no VARCHAR NOT NULL,
    dept_name VARCHAR NOT NULL,
    PRIMARY KEY (dept_no)
);    

--drop table if exists DeptManager cascade;
CREATE TABLE DeptManager(
    dept_no VARCHAR NOT NULL,
    emp_no INTEGER NOT NULL,
    PRIMARY KEY (dept_no, emp_no),
    FOREIGN KEY (dept_no) REFERENCES Departments (dept_no),
    FOREIGN KEY (emp_no) REFERENCES Employees (emp_no)
);

--drop table if exists DeptEmployee cascade;
CREATE TABLE DeptEmployee(
    emp_no INTEGER NOT NULL,
    dept_no VARCHAR NOT NULL,
    PRIMARY KEY (dept_no, emp_no),
    FOREIGN KEY (dept_no) REFERENCES Departments (dept_no),
    FOREIGN KEY (emp_no) REFERENCES Employees (emp_no)
);

--drop table if exists Salaries cascade;
CREATE TABLE salaries (
    emp_no INTEGER   NOT NULL,
    salary INTEGER   NOT NULL,
	PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_no) REFERENCES Employees (emp_no)
);
