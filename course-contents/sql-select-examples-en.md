## SQL Basic Select examples


**AdventureWorks2012 All columns using * character** 

``` sql
SELECT * FROM Customer;
```

Using select with column names




``` sql
SELECT FirstName, LastName FROM Customer;   
```




** Table Alias **

``` sql
SELECT * FROM Customer c;
```


** Calculated Columns **

``` sql
SELECT FirstName || ' ' || LastName FROM Customer;
```

** Column Alias **


``` sql
SELECT FirstName || ' ' || LastName AS FullName FROM Customer;
```



**More Complex Example**

TODO add more complex example from chinook here.
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







