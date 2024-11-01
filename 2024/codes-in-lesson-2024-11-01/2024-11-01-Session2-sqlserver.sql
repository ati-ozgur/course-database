SELECT * FROM Customer 
order by CustomerId 
OFFSET 0 ROWS
FETCH NEXT 10 ROWS ONLY


SELECT * FROM Customer 
order by FirstName 
OFFSET 0 ROWS
FETCH NEXT 10 ROWS ONLY


-- in the sql server, fetch is an extension of an order, we cannot omit it.
SELECT * FROM Customer 
--order by FirstName 
OFFSET 0 ROWS
FETCH NEXT 10 ROWS ONLY


-- in the sql server, fetch is an extension of an order, and offset has to be present
SELECT * FROM Customer 
order by FirstName 
--OFFSET 0 ROWS
FETCH NEXT 10 ROWS ONLY


SELECT TOP 10 * 
FROM  Customer 
ORDER BY FirstName;



SELECT TOP 10 Percent * 
FROM  Customer 
ORDER BY FirstName;



SELECT TOP 10 WITH TIES FirstName 
FROM Customer
ORDER BY FirstName;

-- in this query, rows from Table2 will tried to be converted to dates, IMPLICITLY
-- if you have wrongly formatted values, you will get an error
SELECT date1 from Table1
UNION
Select text from Table2

-- better way of writing this query EXPLICITLY convert the values
-- example below
SELECT date1 from Table1
UNION
Select cast(text as date) from Table2



SELECT * FROM INFORMATION_SCHEMA.TABLES

SELECT * FROM sys.tables;


