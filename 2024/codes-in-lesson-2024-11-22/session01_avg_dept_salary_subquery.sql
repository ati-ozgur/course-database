SELECT * FROM
(
	SELECT e.*
	,
	(
	SELECT s.salary_amount FROM Salary s 
	WHERE
	s.employee_id = e.employee_id 
	) as emp_salary
	,
	(
	SELECT avg(s2.salary_amount) FROM Salary s2
	WHERE
	s2.department = e.department 
	) as dep_avg_salary
	FROM Employee e 
) 
where emp_salary > dep_avg_salary;

--WHERE e.employee_id  = 9;




SELECT * FROM Salary s 
