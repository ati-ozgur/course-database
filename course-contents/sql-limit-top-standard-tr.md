# SQL Standart Sonuçları Limitleme 


SQL:2008'in söz dizimi aşağıdaki gibidir, ne yazık ki sqlite bu söz dizimini desteklemez, ama [postgres](https://www.postgresql.org/docs/9.6/sql-select.html#SQL-LIMIT), DB2, [oracle 12c+](https://blogs.oracle.com/sql/post/how-to-select-the-top-n-rows-per-group-with-sql-in-oracle-database), [sql server 2012+](https://learn.microsoft.com/en-us/previous-versions/sql/sql-server-2012/ms188385(v=sql.110)) desteklemektedir.


```sql
OFFSET start { ROW | ROWS }
FETCH { FIRST | NEXT } [ count ] { ROW | ROWS } ONLY
```


Örnek:

**Oracle**

```sql
SELECT * FROM "Customer" FETCH FIRST 10 ROWS
```

**SQL-server**

fetch seçenekleri sql server'da ORDER BY'ın argümanlarıdır.
ORDER BY olmadan çalışmazlar.

```sql
SELECT * FROM Customer 
order by CustomerId 
OFFSET 0 ROWS
FETCH NEXT 10 ROWS ONLY
```

Bana göre, bu sözdizimi çok hantaldır.
Ayrıca, ofset kullanımı çok sorunludur.
[Bakınız offset'e hayır](https://use-the-index-luke.com/no-offset).

Ne yazık ki, veritabanlarına özgü LIMIT ve TOP anahtar kelimeleri daha kullanışlu ve daha güçlüdür.
Bunları kullanın.

Bu kullanım standardların her zaman daha iyi olmadığına güzel bir örnektir.