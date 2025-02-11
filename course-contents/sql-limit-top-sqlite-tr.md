# SQLite Sonuçları Limitleme  


sqlite, mysql ve postgres'de de kullanılan limit ifadesini destekler.


```sql
select * from Customer limit 5; 
```

OFFSET anahtar kelimesi ile kaç satır atlanabileceği verilebilir.

```sql
SELECT * FROM Customer
LIMIT 5 OFFSET 10
```

Daha önce belirtildiği gibi, ofset kullanımı çok sorunludur.
[Bakınız offset'e hayır](https://use-the-index-luke.com/no-offset).

Ama hızlı ve kolay sayfalama yapmak için küçük tablolarda kullanılabilir.

LIMIT ve OFFSET kelimelerine tamsayıya dönüştürelebilecek herhangi bir ifade gelebilir.
Aşağıdaki sorguda çok mantıklı olmasa da Employee tablosu satır sayıları Limit ve Offset ifadelerine veriliyor.


```sql
SELECT * FROM Customer
LIMIT (SELECT COUNT(*) FROM Employee) 
OFFSET (SELECT COUNT(*) FROM Employee)
```
