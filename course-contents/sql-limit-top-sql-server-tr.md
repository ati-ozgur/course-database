# SQL Sonuçları Limitleme TOP 

## SQL Standard

## SQL Server

- TOP kelimesi gelen sonuçları sayısal veya yüzdesel olarak limitleyebilirsiniz.
- Eğer ORDER BY ile kullanırsanız sıralamaya göre limit yaparsınız.
- ORDER BY olmadan kullanımda geliş sırasının garantisi yoktur.


```sql
SELECT TOP 1 ADI 
FROM ORTAK.KISI  
ORDER BY ADI;
```

```sql
SELECT TOP 10 Percent ADI 
FROM ORTAK.KISI  
ORDER BY ADI;
```


```sql
SELECT TOP 10 WITH TIES ADI 
FROM ORTAK.KISI 
ORDER BY ADI;
```

WITH TIES: Eğer mümkünse mükerrer kayıtlarıda getirir.


## Sqlite

## Oracle

