-- SELECT DATE('now');
--SELECT GETDATE()  

--SELECT * FROM Customer;


--SELECT FirstName, LastName FROM Customer; 

--SELECT c.FirstName,c.LastName FROM Customer c;


-- does not work in sql server since string concat operator is +
-- https://learn.microsoft.com/en-us/sql/t-sql/language-elements/string-concatenation-transact-sql?view=sql-server-ver16
--SELECT c.FirstName || ' ' || c.LastName FROM Customer c;

--SELECT c.FirstName + ' ' + c.LastName FROM Customer c;

--SELECT c.FirstName + ' ' + c.LastName as FullName FROM Customer c;


--select CustomerId
--,sum(Total) as TotalInvoice 
--from Invoice 
--group by CustomerId
--order by TotalInvoice desc;


/*
This is a 
Multi line
comment
*/


--SELECT * from Customer c WHERE 
--c.FirstName LIKE 'A%'
--;

--SELECT * from Customer c WHERE C.Address LIKE '%[23]%'
--
---- second character is a or u
--SELECT * from Customer c WHERE  C.FirstName LIKE '_[au]%'
--
---- second character is NOT a
--SELECT * from Customer c WHERE C.FirstName LIKE '_[^a]%'
--
--
---- second character between a and e, that is a,b,c,d,e
--SELECT * from Customer c WHERE  C.FirstName LIKE '_[a-e]%'


--SELECT c.FirstName + null from Customer c;

--SELECT c.FirstName + ' ' + c.MiddleName + ' ' + c.LastName from Customer c;


