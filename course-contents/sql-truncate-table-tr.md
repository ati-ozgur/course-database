# SQL TRUNCATE TABLE

Tablodaki tüm satırları silen komuttur.
Bu optimize edilmiş bir komut olduğu için farklı veritabanları bunu farklı şekilde ele alır.

- Oracle'da, “Truncate table” DDL komutudur ve işlemi (transaction) gerçekleştirdikten sonra geri alınamaz.

- SQL server'da DML komutudur ve işlemlerde (transaction) normal olarak çalışır.
Bu [stack overflow sorusuna](https://stackoverflow.com/questions/1522931/truncate-table-within-transaction) bakınız.

- sqlite "Truncate table" komutu yoktur.


- [Sql Server Truncate table](https://learn.microsoft.com/en-us/sql/t-sql/statements/truncate-table-transact-sql?view=sql-server-ver16)

- [Oracle Truncate Table](https://docs.oracle.com/en/database/oracle/oracle-database/19/sqlrf/TRUNCATE-TABLE.html)