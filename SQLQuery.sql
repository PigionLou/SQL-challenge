select * from public.departments;
select * from public.dept_emp;
select * from public.dept_manager;
select * from public.employees;
select * from public.salaries;
select * from public.titles;


select 
        employees.emp_no, 
        employees.last_name, 
        employees.first_name, 
        employees.sex, 
        salaries.salary 
from 
       employees 
       inner join salaries
       on employees.emp_no = salaries.emp_no 
order by 
        emp_no;
		

SELECT 
        first_name, 
        last_name, 
        hire_date 
FROM 
       employees 
WHERE 
       hire_date 
       BETWEEN '1986-01-01' 
       AND '1986-12-31' 
order by 
        hire_date;


select
	d.dept_no,
	d.dept_name, 
	dm.emp_no,
	e.last_name, 
	e.first_name
from 
	departments d
	inner join dept_manager dm
	on d.dept_no = dm.dept_no
	inner join employees e
	on dm.emp_no = e.emp_no
order by 
	emp_no;


select 
	e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
from employees e
	inner join dept_emp de
	on de.emp_no=e.emp_no
	inner join departments d
	on d.dept_no=de.dept_no
order by
	emp_no;


select 
	first_name, 
	last_name, 
	sex
from 
	employees
where
	first_name='Hercules' and last_name like 'B%';


select 
	e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
from employees e
	inner join dept_emp de
	on de.emp_no=e.emp_no
	inner join departments d
	on d.dept_no=de.dept_no
where 
	dept_name='Sales'
order by
	emp_no;


select 
	e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
from employees e
	inner join dept_emp de
	on de.emp_no=e.emp_no
	inner join departments d
	on d.dept_no=de.dept_no
where 
	dept_name='Sales' or dept_name='Development'
order by
	emp_no;


SELECT 
        last_name,
COUNT
        (last_name) AS "frequency"
FROM
        employees
GROUP BY 
	last_name
ORDER BY
        COUNT(last_name) DESC;