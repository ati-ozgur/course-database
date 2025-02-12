## Birleştirme (JOIN) Kavramı

- Birden fazla tablodaki satırları verilen kritere göre birleştirir.
- Genellikle ana anahtar (primary key) ve yabancı anahtar (foreign key) birleştirmesi yapılır.
- Örneğin Öğrenci ve İletişim tablosu birleştirilir.
- birleştirme işlemini Venn diagram olarak düşünmek iyi olur.
- Ama aslında, bu bir küme işlemi değildir

![join-inner-example1-tr](images/join-inner-example1-tr.png){width=4in}

Aşağıda iç birleştirme (inner join) için aşağıda başka bir örnek resim görebilirsiniz.

![iç birleştirme (inner join)](images/join-inner.png)

Yukarıdaki örnekte X ve Y tablolarındaki aynı anahtar değerleri (1 ve 2) birleştirilir.
Ama X tablosundaki 3 anahtar değeri ve Y tablosundaki 4 anahtar değeri 2 tabloda birden aynı olmadığı için iç birleştirme sonucuna getirilmemiştir.

Birleştirme işlemi ilişkisel veri tabanlarındaki en önemli işlemlerden biridir.
İlişkili tablolardaki bilgiler birleştirme (join) işlemi yapılarak gösterilir.


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

Bu iki kullanım arasında her zaman ikinci, SQL-92 kullanımı tercih edilmelidir.

