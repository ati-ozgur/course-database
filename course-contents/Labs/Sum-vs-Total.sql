CREATE TABLE Invoice2 AS 
SELECT * FROM Invoice;

SELECT SUM(Total) AS ResultSum
,TOTAL(Total) AS ResultTotal
FROM Invoice2;

UPDATE Invoice2 
SET Total  = NULL;

SELECT SUM(Total) AS ResultSum
,TOTAL(Total)  AS ResultTotal
FROM Invoice2;
