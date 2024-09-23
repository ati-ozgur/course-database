## SQL Basic Select examples

### Temel SELECT Sorgu Örnekleri


#### AdventureWorks2012 Tüm Kolonlar

``` sql
    SELECT * FROM Production.Product;
```

#### AdventureWorks2012  Tablo Takma İsim (Alias)

``` sql
SELECT P.* FROM Production.Product P;
```



#### AdventureWorks2012 Kolon Hesaplama

``` sql
   SELECT Name AS UrunAdi
   , ListPrice * 0.9 AS SatisFiyati
FROM Production.Product;
```




#### AdventureWorks2012 More Complex Example

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


#### (AdventureWorks2012) Kolon Adlari ile


``` sql
    SELECT Name
    , ListPrice 
    FROM Production.Product P;
    
    SELECT P.Name
    , P.ListPrice 
    FROM Production.Product;
```

#### (AdventureWorks2012) Kolon Takma Adı

``` sql
    SELECT Name AS ADI
    , ListPrice AS "Liste Fiyati" 
    FROM Production.Product P;
```







