--SELECT DATE('now');
--SELECT GETDATE()  
--SELECT * FROM Customer;

--SELECT FirstName, LastName FROM Customer;

--SELECT c.FirstName,c.LastName FROM Customer c;


--SELECT c.FirstName || ' ' || c.LastName FROM Customer c;
--SELECT c.FirstName || ' ' || c.LastName AS FullName FROM Customer c;


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


--select FirstName from customer;

-- select DISTINCT FirstName from customer;
-- very common sql interview question, find me which names were duplicate 



--select * from Employee where EmployeeId = 5;

--select * from Employee where EmployeeId <> 5;

--select * from Employee where EmployeeId != 5;

--select * from Employee where EmployeeId < 5;
--select * from Employee where EmployeeId <= 5;
--
--
--select * from Employee where EmployeeId > 5;
--select * from Employee where EmployeeId > 5;


--select * from Employee where NOT EmployeeId <> 5; 

--select * from Employee 
--where 
--EmployeeId = 5 and 
--EmployeeId  = 3;

--select * from Employee 
--where 
--EmployeeId = 5 or 
--EmployeeId  = 3;



--select * from Employee 
--where 
--EmployeeId = 2 or 
--EmployeeId  = 5 or
--EmployeeId = 7
--;
--
--
--select * from Employee where EmployeeId IN (2,5,7);  


--select * from Employee where EmployeeId between 2 and 5;


--SELECT * from Customer c WHERE 
--c.FirstName LIKE 'A%'
--;

--
--SELECT * from Customer c WHERE C.FirstName LIKE 'Lu_s'
--
--SELECT * from Customer c WHERE C.FirstName = 'Luis'
--
--SELECT * from Customer c WHERE C.FirstName LIKE 'A%'
--
--
--
--SELECT * from Customer c WHERE C.Address LIKE '%1%'


-- below like wild cards does not work in sqlite
--SELECT * from Customer c WHERE C.Address LIKE '%[12]%'

