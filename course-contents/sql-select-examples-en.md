## SQL Basic Select examples


**AdventureWorks2012 All columns using * character** 

``` sql
SELECT * FROM Customer;
```
** Table Alias **

``` sql
SELECT * FROM Customer c;
```


** Calculated Columns **

``` sql
   SELECT Name AS UrunAdi
   , ListPrice * 0.9 AS SatisFiyati
FROM Production.Product;
```



More Complex Example


Explanation is later

``` sql
SELECT 
O.OrderDate
, COUNT(O.SalesOrderID) AS OrderCount
FROM Sales.SalesOrderHeader O
WHERE O.Status = 5
GROUP BY O.OrderDate
HAVING COUNT(O.SalesOrderID) > 1
ORDER BY O.OrderDate DESC;
```

Using select with column names

- AdventureWorks2012


``` sql
    SELECT Name
    , ListPrice 
    FROM Production.Product P;
    
    SELECT P.Name
    , P.ListPrice 
    FROM Production.Product;
```

** Column Alias **

AdventureWorks2012

``` sql
    SELECT Name AS ADI
    , ListPrice AS "Liste Fiyati" 
    FROM Production.Product P;
```







