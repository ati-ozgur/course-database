SELECT E.* FROM Employee E 

WHERE (SELECT salary_amount FROM Salary S1 where S1.employee_id= E.employee_id)
>
(SELECT avg(salary_amount) FROM Salary S2 where s2.department = E.department)