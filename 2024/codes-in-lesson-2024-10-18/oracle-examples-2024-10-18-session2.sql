-- SELECT DATE('now');
-- SELECT GETDATE() 

--SELECT CURRENT_DATE FROM dual;

-- This does not work since oracle would like to work with object names as full upper cases
-- SELECT * FROM Customer;

-- oracle by default make object names all UPPER CASE
-- https://stackoverflow.com/questions/36559222/how-to-make-oracle-table-names-case-insensitive
--CREATE TABLE tEsT ( column_name NUMBER );


-- to be able to work with same examples, as sqlite and sqlserver
-- our example database is created using quotes, ""
-- thus, we need to quote our queries while working in oracle 
--SELECT * FROM "Customer";

--SELECT "FirstName", "LastName" FROM "Customer";
-- alias usage if very useful for intellisense
--SELECT c."CustomerId",c."FirstName",c."LastName" FROM "Customer" c;


-- calculated result
--SELECT c."FirstName" || ' ' || c."LastName"  FROM "Customer" c;
-- calculated result with column alias
--SELECT c."FirstName" || ' ' || c."LastName" AS "FullName" FROM "Customer" c;

--select "CustomerId"
--,sum(I."Total") as "TotalInvoice" 
--from "Invoice" I 
--group by "CustomerId"
--order by "TotalInvoice" desc;


--SELECT
-- * -- here character * means all columns
--FROM "Employee";

/*
This is a 
Multi line
comment
*/



SELECT * from "Customer" c WHERE 
c."FirstName" LIKE 'A%'
;

