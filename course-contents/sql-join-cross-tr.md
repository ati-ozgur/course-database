## Cross Join  - Çapraz Birleşim



- İki tablodaki satırları kartezyen çarparak getirir.
- Çapraz birleşim yaparken, kolonların bir birine uyumu aranmaz.
- Bu durum test verisi üretmek için çok uygun bir kullanım olmasını sağlar.

- Örneğin Öğrenci ve İletişim tabloları cross join yapılsın.

{{< include ../course-contents/tables/table-join-cross-example-tr.md >}}


- Sonuçlar 2*3 = 6 kayıt olacaktır.
- Test için veri üretilmesi haricinde istenmeyen bir durumdur. 

```sql
SELECT OgrenciNo,IletisimTipi,IletisimDegeri
FROM   OGRENCI CROSS JOIN ILETISIM
ON  OGRENCI.OgrenciKey = ILETISIM.OgrenciKey;
```

**Chinook çapraz birleştirme örnekleri**

Aşağıdaki sorgu 472 satır getirecektir.

```sql
SELECT * FROM Customer c 
CROSS JOIN
Employee e
```

Çünkü Customer 59 kayıt, Employee 8 kayıt bulundurur ve 59x8 = 472'dir.

```sql
SELECT 
(SELECT COUNT(*) FROM Customer c) AS CustomerCount,
(SELECT COUNT(*) FROM Employee e) AS EmployeeCount,
(SELECT COUNT(*) FROM Customer c) * (SELECT COUNT(*) FROM Employee e) AS CustomerCountXEmployeeCount
```

Aşağıdaki sorgu Album ve MediaType tablolarını çaprazlayarak getirir.
Yine bu örnekte herhangi bir ortak kolon yoktur.


```sql
SELECT * FROM Album  
CROSS JOIN
MediaType
```


Aşağıdaki sorgu daha sonra öğreneceğimiz WITH ile sanal isim tabloları oluşturup bunları cross join ile kartezyen çarpım yapıyor.
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

