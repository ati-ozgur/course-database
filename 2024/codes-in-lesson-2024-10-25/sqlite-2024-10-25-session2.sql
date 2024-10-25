-- this query brings 0 rows. 
-- since = comparison with null (unknown) value is always null (unknown) 
--SELECT 
--c.CustomerId,
--c.FirstName,
--c.LastName,
--c.Company 
--FROM Customer c
--where c.Company  = null
--;



--SELECT 
--c.CustomerId,
--c.FirstName,
--c.LastName,
--c.Company 
--FROM Customer c
--where c.Company  is null
--;
--
--SELECT 
--c.CustomerId,
--c.FirstName,
--c.LastName,
--c.Company 
--FROM Customer c
--where c.Company  is not null
--;

-- do not use this way. Use is not null since it more natural.
--SELECT 
--c.CustomerId,
--c.FirstName,
--c.LastName,
--c.Company 
--FROM Customer c
--where not c.Company  is null
--;

--SELECT C.CustomerId,C.Company FROM Customer c;
-- for nulls, show in the report "Company information is not entered"


--SELECT C.CustomerId,
--COALESCE( C.Company, 'Company information is not entered') AS CompanyName
--FROM Customer c;



-- please show me the full name of the customer for our report
-- + is addition operator for sqlite. 
-- concat string operator for sqlite is || 
/*
SELECT
c.CustomerId
,c.FirstName
,c.LastName
,c.MiddleName
, c.FirstName + ' ' + c.MiddleName + ' ' + c.LastName AS FullName1
, c.FirstName || ' ' || c.MiddleName || ' ' || c.LastName AS FullName2
, c.FirstName || ' ' || COALESCE(c.MiddleName,'') || ' ' || c.LastName AS FullName3
, COALESCE(c.FirstName || ' ' || c.MiddleName || ' ' || c.LastName,  c.FirstName || ' '  || c.LastName) AS FullName4

FROM Customer c;

-- case when operator is very like switch statememt in C-like languages



SELECT
c.CustomerId
, 
case c.CustomerId
	when 10 then 'ten'
	when 20 then 'twenty'
	else 'other'
end
FROM Customer c
Order by c.CustomerId 
;


SELECT
c.CustomerId
, 
case 
	when c.CustomerId <= 10 then 'lesser than ten'
	when c.CustomerId <= 20 then 'lesser than twenty'
	else 'other'
end
FROM Customer c
Order by c.CustomerId 
;

SELECT
c.CustomerId
,c.FirstName
,c.LastName
,c.MiddleName
, 
case
	when c.MiddleName is null then c.FirstName || ' '  || c.LastName
	when c.MiddleName is not null then  c.FirstName || ' ' || c.MiddleName || ' ' || c.LastName	
end as FullName
FROM Customer c;
*/


--SELECT
--MIN(c.CustomerId),
--MAX(c.CustomerId),
--COUNT(c.CustomerId),
--SUM(c.CustomerId),
--AVG(c.CustomerId)
--FROM Customer c;
--
--
--SELECT
--MIN(c.FirstName),
--MAX(c.FirstName),
--COUNT(c.FirstName),
--SUM(c.FirstName),
--AVG(c.FirstName)
--FROM Customer c;


SELECT
MIN(i.Total) AS MinInvoice,
MAX(i.Total) AS MaxInvoice,
COUNT(i.Total) AS CountOfInvoices,
SUM(i.Total) AS SumOfInvoices,
AVG(i.Total) AS AverageOfInvoices
FROM Invoice i;


-- Which customer has spend MOST?
-- who are my best 10 customers?
SELECT
i.CustomerId, i.Total 
FROM Invoice i
WHERE i.CustomerId  = 6
;

SELECT
i.CustomerId, i.Total 
FROM Invoice i
where i.CustomerId  = 3



SELECT
i.CustomerId
, COUNT(*)
, SUM(i.Total) InvoiceSum
, MIN(i.Total)
, MAX(i.Total)
, AVG(i.Total)
FROM Invoice i
GROUP BY i.CustomerId 
ORDER BY InvoiceSum DESC

SELECT
i.CustomerId, i.Total 
FROM Invoice i
where i.CustomerId  = 1




SELECT DISTINCT i.CustomerId FROM  Invoice i




