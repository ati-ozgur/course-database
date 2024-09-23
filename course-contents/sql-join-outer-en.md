## Outer Join  - Dış Birleşim

- Belirtilen tablodan tüm satırları getirirken, diğer tablodan sadece eşleşen satırları getirir.
- Bir tablonun satırlarının tümü getirilir.
- Bu tablo "LEFT, RIGHT, FULL" ile belirtilir.
- Eşleşmeyen özellik bilgileri için NULL getirilir.
- Örneğin İletişim bilgisi olmayan öğrenciler için iletişim bilgisi kısmında NULL yazılacaktır.


![JoinLeftOrnek1](images/JoinLeftOrnek1.png)
![JoinRightOrnek1](images/JoinRightOrnek1.png)
![JoinOuterOrnek1](images/JoinOuterOrnek1.png)


![JoinLeftOrnek1](images/JoinLeftOrnek1.png)

SQL-left-join-syntax-ansi-sql-92

``` sql
SELECT OgrenciNo,IletisimTipi,IletisimDegeri
FROM   OGRENCI LEFT INNER JOIN ILETISIM
ON  OGRENCI.OgrenciKey = ILETISIM.OgrenciKey;
```

## Outer Join Right  - Dıştan Birleşim Sağdan

![JoinLeftOrnek1](images/JoinRightOrnek1.png)

RIGHT JOIN ANSI SQL

``` sql
SELECT OgrenciNo,IletisimTipi,IletisimDegeri
FROM   OGRENCI RIGHT JOIN ILETISIM
ON  OGRENCI.OgrenciKey = ILETISIM.OgrenciKey;
```


## Full Outer Join  - Ful Dış Birleşim


![JoinLeftOrnek1](images/JoinOuterOrnek1.png)

SQL-full-outer-join-syntax-ansi-sql-92

``` sql
SELECT OgrenciNo,IletisimTipi,IletisimDegeri
FROM   OGRENCI FULL OUTER JOIN ILETISIM
ON  OGRENCI.OgrenciKey = ILETISIM.OgrenciKey;
```


