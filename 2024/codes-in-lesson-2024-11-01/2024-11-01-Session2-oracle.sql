
SELECT "CustomerId","FirstName"
FROM "Customer"
FETCH FIRST 10 ROWS ONLY; 



SELECT "CustomerId","FirstName"
FROM "Customer"
ORDER BY "FirstName"
FETCH FIRST 10 ROWS ONLY;


SELECT "CustomerId","FirstName"
FROM "Customer"
WHERE ROWNUM <= 10;


SELECT "CustomerId","FirstName"
FROM "Customer" C
WHERE ROWNUM <= 10
ORDER BY C."FirstName" 
;

SELECT * FROM 
(
    SELECT "CustomerId","FirstName"
    FROM "Customer"
    ORDER BY "FirstName"
)
WHERE ROWNUM <= 10;


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



SELECT c."FirstName" FROM "Customer" c
EXCEPT
SELECT e."FirstName" FROM "Employee" e



SELECT e."FirstName" FROM "Employee" e
EXCEPT
SELECT c."FirstName" FROM "Customer" c


SELECT c."FirstName" FROM "Customer" c
MINUS
SELECT e."FirstName" FROM "Employee" e



SELECT e."FirstName" FROM "Employee" e
MINUS
SELECT c."FirstName" FROM "Customer" c


SELECT * FROM ALL_ALL_TABLES



