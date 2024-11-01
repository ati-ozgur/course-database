
-- oracle support sql:2008 syntax
--SELECT * FROM "Customer" FETCH FIRST 10 ROWS ONLY

--SELECT "CustomerId","FirstName"
--FROM "Customer"
--WHERE ROWNUM <= 10;
--
--
--SELECT "CustomerId","FirstName"
--FROM "Customer"
--WHERE ROWNUM <= 10
--ORDER BY "FirstName";
--
--SELECT * FROM 
--(
--    SELECT "CustomerId","FirstName"
--    FROM "Customer"
--    ORDER BY "FirstName"
--)
--WHERE ROWNUM <= 10;



SELECT c."FirstName" FROM "Customer" c
UNION
SELECT e."FirstName" FROM "Employee" e


SELECT c."FirstName" FROM "Customer" c
UNION ALL
SELECT e."FirstName" FROM "Employee" e



-- this will not work
SELECT c."FirstName",c.LastName FROM "Customer" c
UNION ALL
SELECT e."FirstName" FROM "Employee" e




SELECT c."FirstName" FROM "Customer" c
EXCEPT
SELECT e."FirstName" FROM "Employee" e


SELECT c."FirstName" FROM "Customer" c
MINUS
SELECT e."FirstName" FROM "Employee" e


SELECT e."FirstName" FROM "Employee" e
EXCEPT
SELECT c."FirstName" FROM "Customer" c


SELECT e."FirstName" FROM "Employee" e
MINUS
SELECT c."FirstName" FROM "Customer" c


SELECT c."FirstName" FROM "Customer" c
INTERSECT
SELECT e."FirstName" FROM "Employee" e




