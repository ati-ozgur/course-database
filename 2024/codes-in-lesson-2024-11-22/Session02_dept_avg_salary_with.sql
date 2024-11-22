WITH TEMP_SALARY AS
(
SELECT
e.employee_id 
,e.employee_name 
,e.department 
,
(
	SELECT s.salary_amount FROM Salary s 
	WHERE s.employee_id = e.employee_id 

) as EMP_SALARY
,
(
	SELECT AVG(s.salary_amount) FROM Salary s 
	WHERE s.department = e.department

) AS DEPT_AVG_SALARY
FROM Employee e
)
SELECT * FROM TEMP_SALARY
WHERE EMP_SALARY > DEPT_AVG_SALARY
;

