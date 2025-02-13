# SQL SELECT DISTINCT (Mükerrer Kayıtları eleme)

Sonuçlardan yinelenen satırları (mükerrer kayıtları) kaldırmak için kullanılır.

```sql
SELECT ADI FROM ORTAK.KISI;
```

Sonuç:


- Atilla
- Aydın
- Atilla
- Ali
- Efe
- Duru
- Duru

```sql
SELECT DISTINCT ADI FROM ORTAK.KISI;
```
Sonuç:

- Atilla
- Aydın
- Ali
- Efe
- Duru


## Chinook Örneği

```sql
SELECT FirstName FROM Customer;
```

```sql
SELECT DISTINCT FirstName FROM Customer;
```

Birden fazla kolon adı verilerekte çalıştırılabilir.

Aşağıdaki sorguda sonuç listesi aynı olacaktır çünkü adı ve soyadı aynı olan müşteri Chinook veri tabanında yoktur.

```sql
SELECT FirstName,LastName FROM Customer;
```

```sql
SELECT DISTINCT FirstName,LastName FROM Customer;
```

Diğer bir örnek


```sql
SELECT City FROM Customer;
```
59 satır


```sql
SELECT DISTINCT City FROM Customer;
```
53 satır.

## Sorular

1. Tekrar eden satırlar nasıl bulunur?
Örnek olarak son sorgumuzda hangi şehirler birden fazladır?


