-- SELECT DATE('now');
-- SELECT GETDATE()  
--SELECT * FROM Customer;


-- database.schema.table
--SELECT * from Chinook.dbo.Customer;


--SELECT FirstName || ' '  || LastName FROM Customer;

-- this is single line comment

/*
This is a 
Multi line
comment
*/

--SELECT FirstName + ' '  + LastName FROM Customer;

SELECT * from Customer c
WHERE C.Address LIKE '%[1234567890]%'
;

