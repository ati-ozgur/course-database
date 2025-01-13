SELECT COUNT(*) as NameCount,Name
FROM Employees
GROUP BY Name
HAVING NameCount > 1

WITH NameCounts AS
(
SELECT COUNT(*) as Sayi,Name
FROM Employees
GROUP BY Name
)
Select * FROM NameCounts 
WHERE Sayi > 1

Select * FROM
(
SELECT COUNT(*) as Sayi,Name
FROM Employees
GROUP BY Name
)
WHERE Sayi > 1

