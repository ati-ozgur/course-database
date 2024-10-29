## Cross Join  - Çapraz Birleşim



- İki tablodaki satırları kartezyen çarparak getirir.
- Örneğin Öğrenci ve İletişim tabloları cross join yapılsın.

{{< include ../course-contents/tables/table-join-cross-example-tr.md >}}


- Sonuçlar 2*3 = 6 kayıt olacaktır.
- Test için veri üretilmesi haricinde istenmeyen bir durumdur. 


```sql
SELECT OgrenciNo,IletisimTipi,IletisimDegeri
FROM   OGRENCI CROSS JOIN ILETISIM
ON  OGRENCI.OgrenciKey = ILETISIM.OgrenciKey;
```


