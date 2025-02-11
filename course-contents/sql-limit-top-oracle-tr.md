## Oracle Sonuçları Limitleme  

Oracle 12c+'da FETCH sözdizimini kullanabiliriz.

```sql
SELECT "CustomerId","FirstName"
FROM "Customer"
ORDER BY "FirstName"
FETCH FIRST 10 ROWS ONLY; 
```

Ama daha önce belirtiğim gibi, FETCH ifadesi hantaldır ve kullanışlı değildir.

Oracle ayrıca ROWNUM sözdizimini de destekler.


```sql
SELECT "CustomerId","FirstName"
FROM "Customer"
WHERE ROWNUM <= 10;
```

Ancak rownum ile ilgili sorun, sıralamadan önce sınırlamanın yapılmasıdır.
Aşağıdaki sorgu yanlış sonuçlar getirecektir.

```sql
SELECT "CustomerId","FirstName"
FROM "Customer"
WHERE ROWNUM <= 10;
ORDER BY "FirstName"
```

Doğru sonuçlar için aşağıdaki gibi sanal tablo/alt sorgu sözdizimini kullanmamız gerekiyor:

```sql
SELECT * FROM 
(
	SELECT "CustomerId","FirstName"
	FROM "Customer"
	ORDER BY "FirstName"
)
WHERE ROWNUM <= 10;
```

Veya WITH kullanılabilir.

```sql
WITH SIRALI_MUSTERILER AS 
(
	SELECT "CustomerId","FirstName"
	FROM "Customer"
	ORDER BY "FirstName"
)
SELECT * FROM SIRALI_MUSTERILER WHERE ROWNUM <= 10;
```


Ayrıca ROWNUM sonuçlar getirilirken hesaplanır.
Örneğin aşağıdaki sorgu

```sql
SELECT "CustomerId","FirstName"
FROM "Customer"
WHERE ROWNUM = 10;
```

Hiç bir sonuç getirmez çünkü hesaplama aşağıdaki gibi yapılır.
Birinci satır Oracle tarafından getirilir ama WHERE ifadesine uymadığı için atılır.
Yeni satır getirilir ama bu satırda tekrar 1. satırdır ve yine atılır.
Bu WHERE ifadesi sonuç hiç bir satır gelmez.
Tek satır getirme sorunsuz çalışır.


```sql
SELECT "CustomerId","FirstName"
FROM "Customer"
WHERE ROWNUM = 1;
```

Yine aynı şekilde sanal tablo/alt sorgu/WITH dizimleri ile 10. satır alabiliriz.



```sql
SELECT * FROM 
(
	SELECT "CustomerId","FirstName", ROWNUM AS NUM
	FROM "Customer"
)
WHERE NUM = 10;
```

```sql
WITH TEMP AS 
(
	SELECT "CustomerId","FirstName",ROWNUM AS NUM
	FROM "Customer"
)
SELECT * FROM TEMP WHERE NUM = 10;
```
