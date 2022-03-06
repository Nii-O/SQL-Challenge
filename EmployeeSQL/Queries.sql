----------------------------------------------------------1
SELECT Employees.emp_no, Employees.last_name, Employees.first_name,Employees.sex, Salaries.salary
FROM Salaries
INNER JOIN Employees ON
Employees.emp_no= Salaries.emp_no;

----------------------------------------------------------2
SELECT first_name, last_name, hire_date
FROM Employees
WHERE hire_date between '01/01/1986' and '12/31/1986';

----------------------------------------------------------3
SELECT Departments.dept_no, Departments.dept_name, DeptManager.emp_no, Employees.last_name, Employees.first_name
FROM Departments
LEFT JOIN DeptManager
ON DeptManager.dept_no = Departments.dept_no
LEFT JOIN Employees
ON Employees.emp_no = DeptManager.emp_no;
----------------------------------------------------------4
SELECT Employees.emp_no, Employees.last_name, Employees.first_name, Departments.dept_name
FROM Employees
LEFT JOIN DeptEmployee
ON DeptEmployee.emp_no = Employees.emp_no
LEFT JOIN Departments
ON Departments.dept_no = DeptEmployee.dept_no;
----------------------------------------------------------5
SELECT Employees.first_name, Employees.last_name, Employees.sex
FROM Employees
WHERE first_name = 'Hercules' and last_name like 'B%'
----------------------------------------------------------6
CREATE VIEW emp_dept AS
SELECT Employees.emp_no, Employees.last_name, Employees.first_name, Departments.dept_name
FROM Employees
LEFT JOIN DeptEmployee
ON DeptEmployee.emp_no = Employees.emp_no
LEFT JOIN Departments
ON Departments.dept_no = DeptEmployee.dept_no;

SELECT * FROM emp_dept
WHERE dept_name = 'Sales'
----------------------------------------------------------7
SELECT * FROM emp_dept
WHERE (dept_name ='Development') or  (dept_name = 'Sales') 
----------------------------------------------------------8
SELECT last_name, COUNT(last_name) AS "name count"
FROM Employees
GROUP BY last_name
ORDER BY "name count" DESC;
