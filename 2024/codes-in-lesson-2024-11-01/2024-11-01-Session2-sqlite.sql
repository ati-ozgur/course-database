

SELECT SUM(Total) FROM Invoice i;


SELECT SUM(Total),i.CustomerId FROM Invoice i
group by
i.CustomerId 
;

SELECT * FROM Customer c 
order by FirstName


SELECT * FROM Customer c;



select * from Customer limit 5; 


select * from Customer c 
ORDER BY c.FirstName
limit 5; 


--- UNION

SELECT c.FirstName FROM Customer c

SELECT e.FirstName FROM Employee e


SELECT c.FirstName FROM Customer c
UNION
SELECT e.FirstName FROM Employee e



SELECT c.FirstName FROM Customer c
UNION ALL
SELECT e.FirstName FROM Employee e


-- does not work, expects same number of result columns
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


SELECT FirstName, COUNT(*) FROM
(
SELECT c.FirstName FROM Customer c
UNION ALL
SELECT e.FirstName FROM Employee e
)
GROUP BY FirstName
ORDER BY 2 DESC


SELECT FirstName, COUNT(*) FROM
(
SELECT c.FirstName FROM Customer c
UNION 
SELECT e.FirstName FROM Employee e
)
GROUP BY FirstName
ORDER BY 2 DESC



SELECT A.Name AS ArtistName
, B.Title AS AlbumTitle
FROM Artist A
INNER JOIN Album B
ON A.ArtistId  = B.ArtistId 



SELECT A.Name AS ArtistName
, B.Title AS AlbumTitle
, T.Name  AS TrackName
FROM Artist A
INNER JOIN Album B
ON A.ArtistId  = B.ArtistId 
INNER JOIN Track T 
ON T.AlbumId  = B.AlbumId   




SELECT A.Name AS ArtistName
, B.Title AS AlbumTitle
FROM Artist A
INNER JOIN Album B


INSERT INTO Customer( FirstName, LastName,  Email )
VALUES( 'New Customer First Name', 'New Customer Last Name',  'new@customer.com');


INSERT INTO Employee( FirstName, LastName)
VALUES( 'New Employee First Name', 'New Employee Last Name' ); 


-- since this new customer does not have  SupportRepId
-- we will not see it in our result set.
SELECT 
c.CustomerId
,c.FirstName as CustomerFirstName 
,c.LastName  as CustomerLastName
,e.FirstName as SupportRepresentatorFirstName
,e.LastName as SupportRepresentatorLastName
FROM Customer c 
INNER JOIN Employee e 
ON c.SupportRepId  = e.EmployeeId 


SELECT 
c.CustomerId
,c.FirstName as CustomerFirstName 
,c.LastName  as CustomerLastName
,e.FirstName as SupportRepresentatorFirstName
,e.LastName as SupportRepresentatorLastName
FROM Customer c 
RIGHT JOIN Employee e 
ON c.SupportRepId  = e.EmployeeId 


SELECT 
c.CustomerId
,c.FirstName as CustomerFirstName 
,c.LastName  as CustomerLastName
,e.FirstName as SupportRepresentatorFirstName
,e.LastName as SupportRepresentatorLastName
FROM Customer c 
LEFT JOIN Employee e 
ON c.SupportRepId  = e.EmployeeId 


SELECT 
c.CustomerId
,c.FirstName as CustomerFirstName 
,c.LastName  as CustomerLastName
,e.FirstName as SupportRepresentatorFirstName
,e.LastName as SupportRepresentatorLastName
FROM Customer c 
FULL JOIN Employee e 
ON c.SupportRepId  = e.EmployeeId 



SELECT E.EmployeeID
      ,E.FirstName AS EmployerFirstName
      ,E.LastName AS EmployerLastName
      ,E.Title as EmployeeTitle 
      ,E.ReportsTo
      , M.EmployeeID as ManagerID
      ,M.FirstName AS ManagerFirstName
      , M.LastName AS ManagerLastName
      ,M.Title as ManagerTitle 
  FROM Employee E 
  INNER JOIN Employee M
  ON E.ReportsTo = M.EmployeeID 


SELECT  G.Name,M.Name
FROM Genre G CROSS JOIN MediaType M;

-- Subquery
-- basically, subqueries could be in 
--	select part
-- from part
-- where part

-- SELECT select_list
-- FROM table_source 
-- WHERE search_condition


-- subquery select part example
SELECT E.EmployeeId,E.FirstName,E.LastName 
FROM Employee e;


SELECT * FROM Customer c
WHERE c.SupportRepId  =3 
;

SELECT COUNT(*) FROM Customer c
WHERE c.SupportRepId  =3
;


-- subquery select part example
SELECT E.EmployeeId,E.FirstName,E.LastName
,(
SELECT COUNT(*) FROM Customer c
WHERE c.SupportRepId  = E.EmployeeId 

) AS SupportedCustomerCount
FROM Employee e;



-- subquery from example

SELECT FirstName, COUNT(*) FROM
(
SELECT c.FirstName FROM Customer c
UNION 
SELECT e.FirstName FROM Employee e
)
GROUP BY FirstName
ORDER BY 2 DESC


-- subquery where example


SELECT * FROM Employee e 
WHERE e.FirstName  IN ('Andrew','Nancy')


-- Subquery where + from together example 1

SELECT * FROM Customer c2  
WHERE c2.FirstName  IN 
(
SELECT * FROM 
	(
	SELECT c.FirstName FROM Customer c
	UNION ALL
	SELECT e.FirstName FROM Employee e
	)
ORDER BY 1 DESC
LIMIT 10
)

-- Subquery where + from together example 2

SELECT * FROM Employee e2   
WHERE e2.FirstName  IN 
(
SELECT * FROM 
	(
	SELECT c.FirstName FROM Customer c
	UNION ALL
	SELECT e.FirstName FROM Employee e
	)
ORDER BY 1 DESC
LIMIT 10
)

-- Views

SELECT A.Name AS ArtistName
, B.Title AS AlbumTitle
, T.Name  AS TrackName
FROM Artist A
INNER JOIN Album B
ON A.ArtistId  = B.ArtistId 
INNER JOIN Track T ON T.AlbumId  = B.AlbumId   


CREATE VIEW ArtistTracks
AS
SELECT A.Name AS ArtistName
, B.Title AS AlbumTitle
, T.Name  AS TrackName
FROM Artist A
INNER JOIN Album B
ON A.ArtistId  = B.ArtistId 
INNER JOIN Track T ON T.AlbumId  = B.AlbumId   

select * from ArtistTracks;


CREATE VIEW  IF NOT EXISTS ArtistTracks
AS
SELECT A.Name AS ArtistName
, B.Title AS AlbumTitle
, T.Name  AS TrackName
FROM Artist A
INNER JOIN Album B
ON A.ArtistId  = B.ArtistId 
INNER JOIN Track T ON T.AlbumId  = B.AlbumId   


SELECT * FROM sqlite_schema;



