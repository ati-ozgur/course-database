## Outer Join  - Dış Birleşim

- Belirtilen tablodan tüm satırları getirirken, diğer tablodan sadece eşleşen satırları getirir.
- Bir tablonun satırlarının tümü getirilir.
- Bu tablo "LEFT, RIGHT, FULL" ile belirtilir.
- Eşleşmeyen özellik bilgileri için NULL getirilir.
- Örneğin İletişim bilgisi olmayan öğrenciler için iletişim bilgisi kısmında NULL yazılacaktır.


![join-left-example1-tr](images/join-left-example1-tr.png)
![join-right-example1-tr](images/join-right-example1-tr.png)
![join-outer-example1-tr](images/join-outer-example1-tr.png)


![join-left-example1-tr](images/join-left-example1-tr.png)

SQL-left-join-syntax-ansi-sql-92

``` sql
SELECT OgrenciNo,IletisimTipi,IletisimDegeri
FROM   OGRENCI LEFT INNER JOIN ILETISIM
ON  OGRENCI.OgrenciKey = ILETISIM.OgrenciKey;
```

## Outer Join Right  - Dıştan Birleşim Sağdan

![join-left-example1-tr](images/join-right-example1-tr.png)

RIGHT JOIN ANSI SQL

``` sql
SELECT OgrenciNo,IletisimTipi,IletisimDegeri
FROM   OGRENCI RIGHT JOIN ILETISIM
ON  OGRENCI.OgrenciKey = ILETISIM.OgrenciKey;
```


## Full Outer Join  - Ful Dış Birleşim


![join-left-example1-tr](images/join-outer-example1-tr.png)

SQL-full-outer-join-syntax-ansi-sql-92

``` sql
SELECT OgrenciNo,IletisimTipi,IletisimDegeri
FROM   OGRENCI FULL OUTER JOIN ILETISIM
ON  OGRENCI.OgrenciKey = ILETISIM.OgrenciKey;
```


