# SQL SELECT DISTINCT MÜKERRER KAYITLAR

``` sql
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

``` sql
SELECT DISTINCT ADI FROM ORTAK.KISI;
```
Sonuç:

- Atilla
- Aydın
- Ali
- Efe
- Duru


## Chinook Örneği

``` sql
select FirstName from customer;
```

``` sql
select DISTINCT FirstName from customer;
```
