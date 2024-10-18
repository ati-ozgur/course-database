## SQL Basic Select examples


**Chinook All columns using * character** 

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

More explanation is later.

``` sql
select CustomerId
,sum(total) as TotalInvoice 
from Invoice 
group by CustomerId
order by TotalInvoice desc;
```







