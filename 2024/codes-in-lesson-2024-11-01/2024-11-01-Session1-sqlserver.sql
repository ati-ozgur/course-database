/*-- this example works
SELECT * FROM Customer 
order by CustomerId 
OFFSET 0 ROWS
FETCH NEXT 10 ROWS ONLY

-- does not work in sql server if we forgot offset key word
SELECT * FROM Customer 
order by CustomerId 
FETCH NEXT 10 ROWS ONLY
*/

SELECT TOP 1 * 
FROM  Customer 
ORDER BY FirstName;


SELECT TOP 10 Percent FirstName 
FROM Customer 
ORDER BY FirstName;


SELECT TOP 10 WITH TIES FirstName 
FROM Customer
ORDER BY FirstName;



SELECT c.FirstName FROM Customer c

SELECT e.FirstName FROM Employee e


SELECT c.FirstName FROM Customer c
UNION
SELECT e.FirstName FROM Employee e


SELECT c.FirstName FROM Customer c
UNION ALL
SELECT e.FirstName FROM Employee e



-- this will not work
SELECT c.FirstName,c.LastName FROM Customer c
UNION ALL
SELECT e.FirstName FROM Employee e




SELECT c.FirstName FROM Customer c
EXCEPT
SELECT e.FirstName FROM Employee e


SELECT e.FirstName FROM Employee e
EXCEPT
SELECT c.FirstName FROM Customer c


SELECT c.FirstName FROM Customer c
INTERSECT
SELECT e.FirstName FROM Employee e


SELECT e.EmployeeId 
,e.FirstName 
,e.LastName 
,e.Title 
, SUM(1) AS CustomerCount
FROM Employee e 
LEFT JOIN Customer c ON c.SupportRepId = e.EmployeeId 
GROUP BY E.EmployeeId
,e.FirstName 
,e.LastName 
,e.Title 
;

SELECT * FROM INFORMATION_SCHEMA.TABLES;



