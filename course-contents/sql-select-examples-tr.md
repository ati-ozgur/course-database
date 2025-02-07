## SQL Basit Select Örnekleri


**Chinook Tüm kolonları  * yıldız karaketeri ile** 

```sql
SELECT * FROM Customer;
```


Kolon isimleri ile SELECT


```sql
SELECT FirstName, LastName FROM Customer;   
```

** Hesaplanan kolonlar **

```sql
SELECT FirstName || ' ' || LastName FROM Customer;
```


** Takma Ad Kolon**


```sql
SELECT FirstName || ' ' || LastName AS FullName FROM Customer;
```

Kolon takma adları özellikle hesaplanan kolonlar (calculated columns) için çok kullanışlıdır.


** Takma Ad Tablo **


```sql
SELECT c.FirstName, c.LastName  FROM Customer c;
```

Tablo takma adı, özellikle birden fazla tablodan SELECT kullanarak bilgileri aldığımız, tablolardaki satır  ve sütun adları aynı olduğunda kullanışlıdır.
Hangi tabloadi.kolonadi kullandığımızı ayırt etmemiz gerekir.
Aşağıdaki örneğe bakınız



```sql
SELECT 
c.FirstName || ' ' || c.LastName As CustomerName
, e.FirstName || ' ' || e.LastName AS SupportEmployeeName 
FROM Customer c inner join Employee e on c.SupportRepId = e.EmployeeId 
```




**Daha Karışık Örnek**

Açıklaması daha sonra

```sql
select CustomerId
,sum(total) as TotalInvoice 
from Invoice 
group by CustomerId
order by TotalInvoice desc;
```












