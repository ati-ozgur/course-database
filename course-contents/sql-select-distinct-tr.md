# SQL SELECT DISTINCT MÜKERRER KAYITLAR

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
SELECT FirstName FROM customer;
```

```sql
SELECT DISTINCT FirstName FROM customer;
```

Birden fazla kolon adı verilerekte çalıştırılabilir.

Aşağıdaki sorguda sonuç listesi aynı olacaktır çünkü adı ve soyadı aynı olan müşteri Chinook veri tabanında yoktur.

```sql
SELECT FirstName,LastName FROM Customer;
```

```sql
SELECT DISTINCT FirstName,LastName FROM customer;
```