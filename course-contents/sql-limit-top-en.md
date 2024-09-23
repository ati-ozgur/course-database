# SQL Top Rows or Limiting Rows

## SQL Standard

## SQL Server

- The word TOP can limit the incoming results numerically or as a percentage.
- If you use it with ORDER BY, you limit according to the order.
- There is no guarantee of the order of arrival when used without ORDER BY.


``` sql
SELECT TOP 1 ADI 
FROM ORTAK.KISI  
ORDER BY ADI;
```

``` sql
SELECT TOP 10 Percent ADI 
FROM ORTAK.KISI  
ORDER BY ADI;
```


``` sql
SELECT TOP 10 WITH TIES ADI 
FROM ORTAK.KISI 
ORDER BY ADI;
```

WITH TIES: Eğer mümkünse mükerrer kayıtlarıda getirir.


## Sqlite

## Oracle

