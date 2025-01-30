CREATE TABLE Invoice2 AS 
SELECT * FROM Invoice;

SELECT 
CustomerId
,SUM(Total) AS ResultSum
,TOTAL(Total) AS ResultTotal
FROM Invoice2
GROUP BY CustomerId
ORDER BY CustomerId ASC
;

UPDATE Invoice2 
SET Total  = NULL
WHERE CustomerId = 1
;

SELECT 
CustomerId
,SUM(Total) AS ResultSum
,TOTAL(Total) AS ResultTotal
FROM Invoice2
GROUP BY CustomerId
ORDER BY CustomerId ASC
;
