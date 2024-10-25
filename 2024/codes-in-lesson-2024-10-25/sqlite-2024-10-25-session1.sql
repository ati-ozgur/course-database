-- null where comparison

--SELECT * FROM Customer c 
--where c.Company  = null
--;
--
--
--SELECT * FROM Customer c 
--where c.Company  is null;
--
--
--SELECT * FROM Customer c 
--where c.Company is NOT null;
--
--SELECT * FROM Customer c 
--where NOT  c.Company is null;

--SELECT C.CustomerId,C.Company FROM Customer c
---- for nulls, show in the report "Company information is not entered"
--
--
--SELECT C.CustomerId,
--COALESCE (C.Company,'Company information is not entered') AS Company 
--FROM Customer c

-- here, sqlite tries to handle these columns as numbers
-- due to + operator
SELECT 
    FirstName + ' ' + MiddleName + ' ' + LastName AS FullName
    , C.FirstName ,C.MiddleName ,C.LastName 
 FROM Customer c;


-- correct string concat operator in sqlite is ||
-- in below, query, fullname will be null wherever middlename is null
--SELECT 
--    FirstName || ' ' || MiddleName || ' ' || LastName AS FullName,
--    C.FirstName,
--    C.MiddleName,
--    C.LastName 
--FROM Customer C;
--
--SELECT 
--    FirstName || ' ' || COALESCE(MiddleName,'') || ' ' || LastName AS FullName,
--    C.FirstName,
--    C.MiddleName,
--    C.LastName 
--FROM Customer C;
--
--
--SELECT 
--    COALESCE (
--    FirstName || ' ' || MiddleName || ' ' || LastName,
--     FirstName || ' ' || LastName) AS FullName,
--    C.FirstName,
--    C.MiddleName,
--    C.LastName 
--FROM Customer C;

-- sql case --> very similar c-like languages switch
--
--SELECT 
--case 
--when C.MiddleName is null then FirstName || ' ' || LastName
--when C.MiddleName is not null then  FirstName || ' ' || MiddleName || ' ' || LastName
--end  AS FullName,
--    C.FirstName,
--    C.MiddleName,
--    C.LastName 
--FROM Customer C;
--
--



--SELECT 
--    FirstName || ' ' + MiddleName || ' ' || LastName AS FullName
-- FROM Customer c;
--
--
--
--SELECT 
--    COALESCE(FirstName + ' ' + MiddleName + ' ' + LastName
--    ,FirstName + ' ' + LastName
--     ) AS FullName FROM Customer c;
--
--    
--    
--SELECT
--COUNT(c.FirstName)
--, MAX(c.FirstName)
--, MIN(c.FirstName)
--, SUM(c.FirstName)
--, AVG(c.FirstName)
--
--FROM Customer c;
--
--
--
--SELECT
--COUNT(I.Total)
--, MAX(I.Total)
--, MIN(I.Total)
--, SUM(I.Total)
--, AVG(I.Total)
--
--FROM Invoice I;



--
--SELECT
--COUNT(*)
--FROM Customer c
--WHERE C.Company  IS NULL
--;
--
--SELECT
--COUNT(*)
--FROM Customer c
--WHERE C.Company  IS NOT NULL
--;
--
--SELECT
--COUNT(*)
--FROM Customer c
--WHERE C.Company  IS NULL
--;
--
--
---- below query does not work since count function counts everything
--SELECT
--COUNT(C.Company IS NULL), COUNT(C.Company  IS NOT NULL)
--FROM Customer c
--;
--
--SELECT
--SUM(
--case
--when C.Company IS NULL then 1
--when C.Company IS NOT NULL then 0
--end
--) CompanyNullCount,
--SUM(
--case
--when C.Company IS NULL then 0
--when C.Company IS NOT NULL then 1
--end
--) CompanyNotNullCount
--
--FROM Customer c
--;


-- this query returns total of ALL invoices
SELECT
SUM(I.Total)
FROM Invoice I;


-- I would like to know which Customer spend MOST money?
SELECT
SUM(I.Total), I.CustomerId 
FROM Invoice I
GROUP BY I.CustomerId 
;



SELECT *
FROM Invoice I
WHERE I.CustomerId  =3;

SELECT
SUM(I.Total), I.CustomerId 
FROM Invoice I
WHERE I.CustomerId  =3;


SELECT
SUM(I.Total), I.CustomerId 
FROM Invoice I
GROUP BY I.CustomerId;

SELECT
SUM(I.Total), I.CustomerId 
FROM Invoice I
GROUP BY I.CustomerId
ORDER BY 1;



SELECT
SUM(I.Total),
COUNT(*),
MIN(I.Total),
MAX(I.Total),
AVG(I.Total),
I.CustomerId 
FROM Invoice I
GROUP BY I.CustomerId 
ORDER BY 1 DESC
;



-- logs in my server
-- DDOS attack in last 6 hours
-- which IPs have most connections to my server?

SELECT COUNT(*), IP
FROM LogFiles
WHERE LogDate > Current data - 6 hours
GROUP BY IP
ORDER BY 1

-- IP aaa.vbvv.cc.ccc 2000 connections
-- IP 2 -->










