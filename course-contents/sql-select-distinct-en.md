# SQL SELECT DISTINCT

It is used for removing duplicate rows from results.

```sql
SELECT ADI FROM ORTAK.KISI;
```

Result:


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
Result:

- Atilla
- Aydın
- Ali
- Efe
- Duru


## Chinook example

```sql
select FirstName from customer;
```

```sql
select DISTINCT FirstName from customer;
```
