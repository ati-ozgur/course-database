# SQL-Server Sonuçları Limitleme TOP 

SQL-Server fetch first ifadesini destekler ancak kendi TOP uzantısı da vardır.


- TOP kelimesi gelen sonuçları sayısal veya yüzdesel olarak limitleyebilirsiniz.
- Eğer ORDER BY ile kullanırsanız sıralamaya göre limit yaparsınız.
- ORDER BY olmadan kullanımda geliş sırasının garantisi yoktur.


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

WITH TIES: Eğer mümkünse mükerrer kayıtlarıda getirir.



