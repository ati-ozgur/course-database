# SQL Top Rows or Limiting Rows

## SQL Standard

SQL:2008 has following syntax, unfortunately sqlite does not support this syntax, but [postgres](https://www.postgresql.org/docs/9.6/sql-select.html#SQL-LIMIT), DB2, [oracle 12c+](https://blogs.oracle.com/sql/post/how-to-select-the-top-n-rows-per-group-with-sql-in-oracle-database), [sql server 2012+](https://learn.microsoft.com/en-us/previous-versions/sql/sql-server-2012/ms188385(v=sql.110)) does.



> OFFSET start { ROW | ROWS }
> FETCH { FIRST | NEXT } [ count ] { ROW | ROWS } ONLY

example:

``` sql
SELECT * FROM Customer FETCH FIRST 10 ROWS
```

## SQL Server

SQL server supports fetch first syntax but it has also has its own extension TOP.

- The word TOP can limit the incoming results numerically or as a percentage.
- If you use it with ORDER BY, you limit according to the order.
- There is no guarantee of the order of arrival when used without ORDER BY.


``` sql
SELECT TOP 1 FirstName 
FROM  Customer 
ORDER BY FirstName;
```

``` sql
SELECT TOP 10 Percent FirstName 
FROM Customer 
ORDER BY FirstName;
```


``` sql
SELECT TOP 10 WITH TIES FirstName 
FROM Customer
ORDER BY FirstName;
```

WITH TIES: Eğer mümkünse mükerrer kayıtlarıda getirir.


## Sqlite

sqlite support limit syntax which is also used in mysql and postgre.

``` sql
select * from Customer limit 5; 
```
## Oracle

