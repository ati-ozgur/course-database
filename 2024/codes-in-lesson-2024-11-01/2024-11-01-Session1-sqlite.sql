
--SELECT
--SUM(I.Total), I.CustomerId 
--FROM Invoice I
--GROUP BY I.CustomerId 
--;

--SELECT * FROM Customer c;
--
--
--select * from Customer limit 5; 
--
--
--select * from Customer 
--ORDER BY FirstName 
--limit 5; 


/*SELECT c.FirstName FROM Customer c

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


SELECT SOME_DATE FROM TABLE1
UNION
SELECT SOME_TEXT FROM TABLE2


SELECT SOME_DATE FROM TABLE1
UNION
SELECT CAST(SOME_TEXT AS DATE) FROM TABLE2


SELECT c.FirstName FROM Customer c
EXCEPT
SELECT e.FirstName FROM Employee e


SELECT e.FirstName FROM Employee e
EXCEPT
SELECT c.FirstName FROM Customer c


SELECT c.FirstName FROM Customer c
INTERSECT
SELECT e.FirstName FROM Employee e
*/


/*
-- join 2 tables
SELECT A.Name AS ArtistName
, B.Title AS AlbumTitle
FROM Artist A
INNER JOIN Album B
ON A.ArtistId  = B.ArtistId 



-- join 3 tables
SELECT A.Name AS ArtistName
, B.Title AS AlbumTitle
, T.Name  AS TrackName
FROM Artist A
INNER JOIN Album B ON A.ArtistId  = B.ArtistId 
INNER JOIN Track T ON T.AlbumId  = B.AlbumId   
ORDER BY ArtistName


-- I dislike this usage
SELECT A.Name AS ArtistName
, B.Title AS AlbumTitle
FROM Artist A
INNER JOIN Album B
*/

/*INSERT INTO Customer( FirstName, LastName,  Email )
VALUES( 'New Customer First Name', 'New Customer Last Name',  'new@customer.com');

SELECT * FROM Customer c;



INSERT INTO Employee( FirstName, LastName)
VALUES( 'New Employee First Name', 'New Employee Last Name' ); 

SELECT * FROM Employee e;*/
/*

SELECT 
c.CustomerId
,c.FirstName as CustomerFirstName 
,c.LastName  as CustomerLastName
,e.FirstName as SupportRepresentatorFirstName
,e.LastName as SupportRepresentatorLastName
from Customer c 
INNER JOIN Employee e  on c.SupportRepId  = e.EmployeeId 


<- LEFT -> RIGHT

SELECT 
c.CustomerId
,c.FirstName as CustomerFirstName 
,c.LastName  as CustomerLastName
,e.FirstName as SupportRepresentatorFirstName
,e.LastName as SupportRepresentatorLastName
from Customer c 
RIGHT JOIN Employee e on c.SupportRepId  = e.EmployeeId 

SELECT 
c.CustomerId
,c.FirstName as CustomerFirstName 
,c.LastName  as CustomerLastName
,e.FirstName as SupportRepresentatorFirstName
,e.LastName as SupportRepresentatorLastName
from Customer c 
LEFT JOIN Employee e on c.SupportRepId  = e.EmployeeId 


SELECT 
c.CustomerId
,c.FirstName as CustomerFirstName 
,c.LastName  as CustomerLastName
,e.FirstName as SupportRepresentatorFirstName
,e.LastName as SupportRepresentatorLastName
from Customer c 
FULL JOIN Employee e on c.SupportRepId  = e.EmployeeId 

*/

--
--SELECT E.EmployeeID
--      ,E.FirstName AS EmployerFirstName
--      ,E.LastName AS EmployerLastName
--      ,E.ReportsTo
--      , M.EmployeeID as ManagerID
--      ,M.FirstName AS ManagerFirstName
--      , M.LastName AS ManagerLastName
--  FROM Employee E 
--  INNER JOIN Employee M
--  ON E.ReportsTo = M.EmployeeID 
--  
--SELECT  G.Name,M.Name
--FROM Genre G CROSS JOIN MediaType M;





SELECT e.* FROM Employee e;

SELECT COUNT(*) FROM Customer c
WHERE c.SupportRepId = 3
;

SELECT e.EmployeeId 
,e.FirstName 
,e.LastName 
,e.Title 
,
(
SELECT COUNT(*) FROM Customer c
WHERE c.SupportRepId = e.EmployeeId 
) AS CustomerCount
FROM Employee e;


-- I need to check this one, but this is an issue of NULL handling of aggregate function count
SELECT e.EmployeeId 
,e.FirstName 
,e.LastName 
,e.Title 
, COUNT(*) AS CustomerCount
FROM Employee e 
LEFT JOIN Customer c ON c.SupportRepId = e.EmployeeId 
GROUP BY E.EmployeeId
,e.FirstName 
,e.LastName 
,e.Title 
;



SELECT e.EmployeeId 
,e.FirstName 
,e.LastName 
,e.Title 
,
( 
SELECT
      M.FirstName || ' ' ||  M.LastName 
  FROM Employee M
  WHERE E.ReportsTo = M.EmployeeID 
) AS ReportsTo 
FROM Employee e;



SELECT *
FROM 
(
SELECT SUM(Total) AS TotalInvoice,i.CustomerId FROM Invoice i 
GROUP BY CustomerId
)
WHERE TotalInvoice > 40



SELECT * FROM 
(
SELECT c.FirstName FROM Customer c
UNION
SELECT e.FirstName FROM Employee e

)
ORDER BY 1
LIMIT 10;


SELECT * FROM Employee e 
WHERE e.FirstName  IN ('Andrew','Nancy')


SELECT * FROM Customer c2  
WHERE c2.FirstName  IN 
(
SELECT * FROM 
	(
	SELECT c.FirstName FROM Customer c
	UNION
	SELECT e.FirstName FROM Employee e
	)
ORDER BY 1
LIMIT 10
)



CREATE VIEW IF NOT EXISTS ArtistTracks
AS
SELECT A.Name AS ArtistName
, B.Title AS AlbumTitle
, T.Name  AS TrackName
FROM Artist A
INNER JOIN Album B
ON A.ArtistId  = B.ArtistId 
INNER JOIN Track T ON T.AlbumId  = B.AlbumId   


SELECT * FROM ArtistTracks
WHERE ArtistName LIKE 'Black%'


SELECT * FROM (
SELECT A.Name AS ArtistName
, B.Title AS AlbumTitle
, T.Name  AS TrackName
FROM Artist A
INNER JOIN Album B
ON A.ArtistId  = B.ArtistId 
INNER JOIN Track T ON T.AlbumId  = B.AlbumId   
)
WHERE ArtistName LIKE 'Black%'


SELECT * FROM sqlite_schema;





