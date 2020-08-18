
--List the following details of each employee: employee number, last name, first name, sex, and salary.
select emp.employeeID, emp.first_name, emp.last_name, emp.sex, salary.salary
from employee as emp
join salary on
emp.employeeID=salary.employeeID

--List first name, last name, and hire date for employees who were hired in 1986.
select emp.first_name, emp.last_name, emp.hire_date
from employee as emp
where hire_date like '%1986';

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

select dm.departmentID, d.department_name, dm.employeeID, emp.first_name, emp.last_name 
from department_manager as dm
left join employee as emp
on (dm.employeeID=emp.employeeID)
	join departments as d
	on (dm.departmentID=d.departmentID);
	
--List the department of each employee with the following information: employee number, last name, first name, and department name.
select emp.employeeID, emp.first_name, emp.last_name, dep.department_name
from employee as emp
join department_employee as dep_em 
on(emp.employeeID=dep_em.employeeID)
	join departments as dep
	on (dep_em.departmentID=dep.departmentID)
	
--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select first_name, last_name, sex
from employee
where first_name like 'Hercules' and last_name like 'B%';

--List all employees in the Sales department, including their employee number, last name, first name, and department name
select emp.employeeID, emp.first_name, emp.last_name, dep.department_name
from employee as emp
join department_employee as dep_em 
on(emp.employeeID=dep_em.employeeID)
	join departments as dep
	on (dep_em.departmentID=dep.departmentID)
	where dep.department_name='Sales';

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name
select emp.employeeID, emp.first_name, emp.last_name, dep.department_name
from employee as emp
join department_employee as dep_em 
on(emp.employeeID=dep_em.employeeID)
	join departments as dep
	on (dep_em.departmentID=dep.departmentID)
	where dep.department_name='Sales' or dep.department_name='Development';


--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name
select count(e.last_name) as name_count, e.last_name
from employee as e
Group by e.last_name
ORDER BY name_count DESC;

--Epilogue
select * from employee as e
where e.employeeID=499942;

--What a joke