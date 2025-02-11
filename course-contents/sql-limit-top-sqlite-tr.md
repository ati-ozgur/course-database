# SQLite Sonuçları Limitleme  


SQLite, MySql ve Postgres'de de kullanılan limit ifadesini destekler.
LIMIT ifadesi, tüm SELECT ifadesi tarafından kaç satır döndüreleceğini belirtir.



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

LIMIT ve OFFSET bir arada kullanım yerine, aşağıdaki gibi virgül ile kullanımda yapılabilir.
Buradaki sorun ilk ifade offset ikincisi limit değeri olmasıdır.
Aşağıdaki sorgu 10 satır döndürür.
Bu kafa karışıklığına yol açabileceği için normal limit ve offset kullanın.

```sql
SELECT * FROM Customer
LIMIT 5,10
```

Eğer LIMIT ifadesi, set operasyonları ile birleşik bir sorgu için çalıştırılırsa 2 sorgunun toplam sonucu için birden çalışır.
Aşağıdaki sorgu Employee ve Customer tablolarını birleştirir arkasından limit uygulanır.


```sql
SELECT FirstName FROM Employee
UNION
SELECT FirstName FROM Customer
LIMIT 20
```
