## Birleştirme (JOIN) Kavramı

- Birden fazla tablodaki satırları verilen kritere göre birleştirir.
- Genellikle ana anahtar (primary key) ve yabancı anahtar (foreign key) birleştirmesi yapılır.
- Örneğin Öğrenci ve İletişim tablosu birleştirilir.
- birleştirme işlemini Venn diagram olarak düşünmek iyi olur.
- Ama aslında, bu bir küme işlemi değildir


![join-inner-example1-tr](images/join-inner-example1-tr.png)


## JOIN Birleştirme Söz Dizimi

**ANSI-SQL-89** kullanımı

```sql
SELECT ...
FROM   Table1, Table2
WHERE  Table1.KolonA = Table2.KolonA;
```

**ANSI-SQL-92** kullanımı

```sql
SELECT ...
FROM   Table1 JOIN Table2
ON  Table1.KolonA = Table2.KolonA;
```

