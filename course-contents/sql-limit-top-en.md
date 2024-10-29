# SQL Top Rows or Limiting Rows

## SQL Standard

SQL:2008 has following syntax, unfortunately sqlite does not support this syntax, but [postgres](https://www.postgresql.org/docs/9.6/sql-select.html#SQL-LIMIT), DB2, [oracle 12c+](https://blogs.oracle.com/sql/post/how-to-select-the-top-n-rows-per-group-with-sql-in-oracle-database), [sql server 2012+](https://learn.microsoft.com/en-us/previous-versions/sql/sql-server-2012/ms188385(v=sql.110)) does.


```sql
OFFSET start { ROW | ROWS }
FETCH { FIRST | NEXT } [ count ] { ROW | ROWS } ONLY
```


example:

**oracle**

```sql
SELECT * FROM "Customer" FETCH FIRST 10 ROWS
```

**sql server**

fetch options are arguments of order by in sql server.
Without order by, they do not work.

```sql
SELECT * FROM Customer 
order by CustomerId 
OFFSET 0 ROWS
FETCH NEXT 10 ROWS ONLY
```

In my opinion, this syntax is very cumbersome.
Also, the offset usage is very problematic, see [here](https://use-the-index-luke.com/no-offset).

Unfortunately, database specific limit and top keywords are more powerful.
Use them.


## SQL Server

SQL server supports fetch first syntax but it has also has its own extension TOP.

- The word TOP can limit the incoming results numerically or as a percentage.
- If you use it with ORDER BY, you limit according to the order.
- There is no guarantee of the order of arrival when used without ORDER BY.


```sql
SELECT TOP 1 FirstName 
FROM  Customer 
ORDER BY FirstName;
```

```sql
SELECT TOP 10 Percent FirstName 
FROM Customer 
ORDER BY FirstName;
```


```sql
SELECT TOP 10 WITH TIES FirstName 
FROM Customer
ORDER BY FirstName;
```

WITH TIES: If possible, it also brings duplicate records.


## Sqlite

sqlite support limit syntax which is also used in mysql and postgre.

```sql
select * from Customer limit 5; 
```


## Oracle

We can use FETCH syntax in oracle 12c+.

```sql
SELECT "CustomerId","FirstName"
FROM "Customer"
ORDER BY "FirstName"
FETCH FIRST 10 ROWS ONLY; 
```

Oracle also supports ROWNUM syntax.

```sql
SELECT "CustomerId","FirstName"
FROM "Customer"
WHERE ROWNUM <= 10;
```

But problem with the rownum is that limiting is done before ordering.
Below query will bring wrong results.

```sql
SELECT "CustomerId","FirstName"
FROM "Customer"
WHERE ROWNUM <= 10;
ORDER BY "FirstName"
```

We need to use virtual table/sub query syntax for correct results as below:

```sql
SELECT * FROM 
(
	SELECT "CustomerId","FirstName"
	FROM "Customer"
	ORDER BY "FirstName"
)
WHERE ROWNUM <= 10;
```
