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


Aşağıdaki sorgu daha sonra öğreneceğimiz WITH ile sanal isim tablolaru oluşturup bunları cross join ile kartezyen çarpım yapıyor.
Bu sayede test verisi olarak isimler üretiyoruz.


```sql
WITH Names1 AS
(
SELECT e.FirstName ,e.LastName FROM Employee e
), Names2 AS
(
SELECT c.FirstName ,c.LastName FROM Customer c
)
SELECT n1.FirstName,n2.LastName FROM Names1 as n1 CROSS JOIN Names2 as n2
UNION
SELECT n2.FirstName,n1.LastName FROM Names1 as n1 CROSS JOIN Names2 as n2
```