## SQL Basic Select examples


**Chinook All columns using * character** 

```sql
SELECT * FROM Customer;
```

Using select with column names




```sql
SELECT FirstName, LastName FROM Customer;   
```

** Calculated Columns **

```sql
SELECT FirstName || ' ' || LastName FROM Customer;
```


** Column Alias **


```sql
SELECT FirstName || ' ' || LastName AS FullName FROM Customer;
```

Column aliases are especially useful with calculated columns.


** Table Alias **


```sql
SELECT c.FirstName, c.LastName  FROM Customer c;
```

Table alias is especially useful when we select rows from more than one table and the column names are same.
We need to distinguish which tablename.columnname we are using.
See below example

```sql
SELECT 
c.FirstName || ' ' || c.LastName As CustomerName
, e.FirstName || ' ' || e.LastName AS SupportEmployeeName 
FROM Customer c inner join Employee e on c.SupportRepId = e.EmployeeId 
```




**More Complex Example**

More explanation is later.

```sql
select CustomerId
,sum(total) as TotalInvoice 
from Invoice 
group by CustomerId
order by TotalInvoice desc;
```







