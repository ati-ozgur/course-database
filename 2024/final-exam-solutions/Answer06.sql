SELECT E1.EmployeeId, E1.FirstName ,E1.LastName,   
E2.FirstName || ' ' || E2.LastName AS ManagerFullName
FROM Employee E1 INNER JOIN 
Employee E2 ON E1.ReportsTo = E2.EmployeeId;


SELECT E1.EmployeeId, E1.FirstName ,E1.LastName,   
(SELECT E2.FirstName || ' ' || E2.LastName FROM Employee E2 WHERE E1.ReportsTo = E2.EmployeeId) AS ManagerFullName
FROM Employee E1
