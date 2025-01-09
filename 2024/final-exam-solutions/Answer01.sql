SELECT EmployeeId , LastName , FirstName , HireDate
FROM Employee;

SELECT EmployeeId , LastName , FirstName , HireDate, typeof(HireDate) As Affinity
FROM Employee;


SELECT EmployeeId , LastName , FirstName , HireDate,strftime('%m', HireDate)
FROM Employee

-- strftime
SELECT EmployeeId , LastName , FirstName , HireDate 
FROM Employee
WHERE strftime('%m', HireDate) = '01';

-- LIKE
SELECT EmployeeId , LastName , FirstName , HireDate 
FROM Employee
WHERE HireDate LIKE '%-01-%';


SELECT EmployeeId , LastName , FirstName , HireDate 
FROM Employee
WHERE HireDate LIKE '____-01-%';


SELECT EmployeeId , LastName , FirstName , HireDate 
FROM Employee
-- reversed from normal like, 
-- X is the pattern and Y is the string to match 
WHERE LIKE('____-01-%',HireDate);

-- GLOB
SELECT EmployeeId , LastName , FirstName , HireDate 
FROM Employee
WHERE HireDate GLOB '*-01-*';


SELECT EmployeeId , LastName , FirstName , HireDate 
FROM Employee
WHERE HireDate GLOB '????-01-*';

SELECT EmployeeId , LastName , FirstName , HireDate 
FROM Employee
-- reversed from normal glob
-- X is the pattern and Y is the string to match 
WHERE  GLOB ('????-01-*',HireDate);


-- HATALI

-- LIKE
SELECT EmployeeId , LastName , FirstName , HireDate 
FROM Employee
WHERE HireDate LIKE '%-01%';

-- GLOB
SELECT EmployeeId , LastName , FirstName , HireDate 
FROM Employee
WHERE HireDate GLOB '*-01*';
-- 2004-02-01 00:00
