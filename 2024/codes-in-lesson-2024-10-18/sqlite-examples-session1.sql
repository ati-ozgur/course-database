-- SELECT DATE('now');
-- SELECT GETDATE() does not work, getdate is only in sqlserver
-- SELECT * FROM Customer;


--SELECT FirstName, LastName FROM Customer;   

--SELECT c.CustomerId,c.FirstName,c.LastName FROM Customer c;

--SELECT FirstName || ' ' || LastName FROM Customer;


-- this is single line comment


/*
This is a 
Multi line
comment
*/


--select CustomerId
--,sum(total) as TotalInvoice 
--from Invoice 
--group by CustomerId
--order by TotalInvoice desc;



--select FirstName from Customer;

--select DISTINCT FirstName from Customer;

-- The question of "which names were duplicate?" is a common interview question.


--select * from Employee where EmployeeId > 5 or EmployeeId < 2;
--select * from Employee where EmployeeId > 5 and EmployeeId < 2;

-- select * from Employee where not EmployeeId != 5;

--select * from Employee where EmployeeId IN (2,5,7);  


--select * from Employee where EmployeeId = 2 or EmployeeId = 5 or EmployeeId  = 7;

--select * from Employee where EmployeeId BETWEEN 2 and 5;


-- Bring me Customers whose firstname start with L
--SELECT * from Customer c
--WHERE C.FirstName LIKE 'L%';

-- Bring me customer whose address number 1 in it
--SELECT * from Customer c
--WHERE C.Address LIKE '%1%'
;

-- does not work since sqlite does not support wild card []
--SELECT * from Customer c
--WHERE C.Address LIKE '%[1234567890]%'
;



-- this query will be something like below, if MiddleName existed.
---SELECT C.FirstName || null || C.LastName from Customer c;

--SELECT C.FirstName || C.MiddleName || C.LastName from Customer c;

select null = null;




