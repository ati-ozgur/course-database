SELECT 
Customer.FirstName || ' ' || Customer.LastName As CustomerName
, Employee.FirstName || ' ' || Employee.LastName AS SupportEmployeeName 
FROM Customer inner join Employee on Customer.SupportRepId = Employee.EmployeeId


SELECT c.CustomerId,c.FirstName,c.LastName,e.EmployeeId 
FROM Customer c 
INNER JOIN Employee e 
ON e.EmployeeId  = c.SupportRepId 
WHERE c.City  = 'Prague'


-- table alias makes the query shorter

/*
SELECT 
c.FirstName || ' ' || c.LastName As CustomerName
, e.FirstName || ' ' || e.LastName AS SupportEmployeeName 
FROM Customer c inner join Employee e on c.SupportRepId = e.EmployeeId,
*/

select DISTINCT FirstName from customer;

select FirstName from customer;

-- How to find this duplicate FirstName in the customer table???
-- which first names are same in Customer table?

select FirstName from customer;

-- how many times given first name occurs
select FirstName,COUNT(FirstName) from customer
GROUP BY FirstName 
;

-- how many times given first name occurs, ordered by duplicate count
select FirstName,COUNT(FirstName) from customer
GROUP BY FirstName 
ORDER BY 2 DESC
;

-- I need to use Having for filter since where works BEFORE GROUP BY
-- HAVING works AFTER GROUP BY and with AGGREGATE FUNCTIONS
select 
FirstName,
COUNT(FirstName)
from customer
GROUP BY FirstName 
HAVING COUNT(FirstName) > 1
ORDER BY 2 DESC
;

WITH NAMES_COUNT AS
(
select FirstName,COUNT(FirstName) AS NAME_COUNT from customer
GROUP BY FirstName 
)
SELECT * FROM NAMES_COUNT
WHERE NAME_COUNT > 1

SELECT * FROM
(
select FirstName,COUNT(FirstName) AS NAME_COUNT from customer
GROUP BY FirstName 
)
WHERE NAME_COUNT > 1



select FirstName,COUNT(FirstName) AS NAME_COUNT from customer
GROUP BY FirstName 



SELECT * from Customer c WHERE C.FirstName LIKE 'L%';


-- How will I find Customers who has no company info given or company info is empty or whitespace???

SELECT c.CustomerId,c.FirstName,c.Company FROM Customer c 
WHERE
c.Company IS NULL
OR
TRIM(c.Company) = ''

-- Please show in the report that the company information is not given if they are null or empty
-- otherwise show their company information
SELECT c.CustomerId,c.FirstName,
(
CASE
	WHEN c.Company IS NULL THEN 'the company information is not given'
	WHEN trim(c.Company) = '' THEN 'the company information is not given'
	ELSE
	c.Company
END
) AS CompanyInfo
FROM Customer c 


-- Which city has the most customers?

SELECT City, COUNT(City)
FROM Customer c 
GROUP BY City 
ORDER BY 2 DESC 

-- which of my employee are born in January???
SELECT e.EmployeeId,e.FirstName,e.LastName,e.BirthDate FROM Employee e 
WHERE E.BirthDate LIKE '____-01-%'

-- Which city has the most customers?

SELECT City, COUNT(City)
FROM Customer c 
GROUP BY City 
ORDER BY 2 DESC 
LIMIT 10


-- please bring me the information Artist, Album and Track together.

SELECT * FROM Artist a 
INNER JOIN Album ab
ON a.ArtistId  = ab.ArtistId 
INNER JOIN Track t 
ON t.AlbumId  = ab.AlbumId 
ORDER BY a.Name , ab.Title , t.Name 

-- self join employee table

SELECT E.EmployeeID
      ,E.LastName AS EmployerLastName
      ,E.FirstName AS EmployerFirstName
      ,E.ReportsTo
      , M.EmployeeID as ManagerID
      , M.LastName AS ManagerLastName
      ,M.FirstName AS ManagerFirstName
  FROM Employee E 
  INNER JOIN Employee M
  ON E.ReportsTo = M.EmployeeID 
  

SELECT 1
-- Recursive CTE Example
  
WITH RECURSIVE num(x) AS (
SELECT 1
UNION ALL
SELECT x+1 FROM num
LIMIT 100
)
SELECT x FROM num;

-- another example for adding numbers.
WITH RECURSIVE TotalSum AS 
( 
SELECT 0 AS Count, 0 AS Total 
UNION ALL
SELECT Count + 1, Total + Count FROM TotalSum 
WHERE Count <= 100 
) 
SELECT * FROM TotalSum;


-- paging example

-- all rows
SELECT C.CustomerId,C.FirstName,C.LastName FROM Customer C
-- in one page show 5 rows 
SELECT C.CustomerId,C.FirstName,C.LastName FROM Customer C
LIMIT 5

-- in one page show 5 rows order by FirstName
SELECT C.CustomerId,C.FirstName,C.LastName FROM Customer C
ORDER BY C.FirstName
LIMIT 5


-- skip 4 pages , 4*5 = 20 rows, show 5 rows.
WITH PAGE AS
(
	SELECT C.CustomerId,C.FirstName,C.LastName FROM Customer C
	ORDER BY C.FirstName
)
SELECT * FROM PAGE
LIMIT 5 OFFSET 20;


SELECT COUNT(*) FROM Customer 
WHERE FirstName LIKE 'A%'


SELECT * FROM Customer 
WHERE FirstName LIKE 'A%'

UPDATE Customer
SET City='DENEME'
WHERE FirstName LIKE 'A%'; 


--- Transaction CLI

BEGIN TRANSACTION;
select count(*) FROM Customer; 

INSERT INTO Customer
(FirstName, LastName,  Email)
VALUES('Aydın', 'Özgür',  'atilla@abu')

ROLLBACK TRANSACTION;

select count(*) FROM Customer; 

--- Transaction DBeaver
select count(*) FROM Customer; 

select * FROM Customer
WHERE FirstName LIKE 'A%';


select count(*) FROM Customer; 


