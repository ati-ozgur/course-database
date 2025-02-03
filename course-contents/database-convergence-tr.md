## Herşey Veritabanında

İlişkisel veritabanları sıkıcıdır.
Ama sıkıcı olmak iyidir, özellikle de para söz konusu olduğunda iyidir.
MongoDB gibi belge veri tabanları basit ve hızlı başlangıçları nedeniyle popülerdir ancak sorunlar daha sonra verilerinizin tutarlı olması gerektiğinde ortaya çıkar.

Ayrıca, eski sıkıcı teknolojiler farklı ihtiyaçlar için birçok yardımcı programa sahiptir.
Örneğin, şema karşılaştırması eski sıkıcı veritabanlarında yaygın olarak desteklenir ancak lütfen aynı kullanım durumu için belge veritabanlarına bakın.


KISS:"Basit ve Aptalca tut" prensipi üzerine uygulamanıza mümkün olduğunca basit başlamalı ve zamanı gelince karışık teknolojileri eklemelisiniz.
Bakınız ekteki vidyonun en önemli yansısı: 
[Yazılım Mi̇marlığı kararları erteleme sanatıdır.](https://www.youtube.com/watch?v=nuHMlA3iLjY)



## İlişkisel veritabanı birçok kullanım durumu için çok iyi bir ilk tercihtir

Uygulamanızı başlarken her zaman ilişkisel veritabanıyla başlamalısınız.
Erken optimizasyon her kötülüğün köküdür.
Daha sonra, **gerekirse** uygulamanıza başka teknolojiler ekleyin.


Birçok kullanım durumu için ilişkisel veritabanları çok iyi bir ilk tercihtir.
API'nizi yazarken cephe (facade) tasarım desenini kullanabilirsiniz.
Daha sonra **gerektiğinde**,  ihtiyaca göre, farklı teknolojilere geçirebilirsiniz.
Bu, aşağıdaki gibi birçok kullanım durumuyla yapılabilir:


- Olaylar (Events)
- Günlükler (Logs)
- Belgeler (Documents)
	* Belgelerde arama
- Redis gibi Anahtar/Değer önbelleği (Key/Value cache)
- Tam metin araması (Full text search)

Bu şekilde kafka, redis, elastic search gibi bir sürü teknolojiyle başlamak yerine ilişkisel veritabanıyla başlayıp daha sonra ihtiyaç duyduğunuzda bu teknolojileri ekleyebilirsiniz.


## Veritabanları yığınlarına yeni teknolojiler ekler

1. Nesneler
2. XML Verileri
3. JSON Verileri
4. Grafikler
5. Vektörler



## Nesne Veritabanı (Object Database)

Oracle, [Oracle Nesne-İlişkisel](https://docs.oracle.com/en/database/oracle/oracle-database/23/adobj/index.html) paradigmasını destekler.
Nesne veritabanları bir süre popülerdi ve Oracle bu özellikleri dahil etti.
Bu nesne özelliklerinin üretim Oracle veritabanlarında kullanıldığını hiç görmedim.


SQL Server ve Sqlite, Nesne İlişkisel paradigmasını desteklemez.
Açık kaynaklı veritabanı sistemleri arasında [postgres bunu destekler](https://learn.postgreshelp.com/courses/postgresql-tutorial-dba/lesson/object-relational-database-management-system)




## XML Verisi

- Oracle'ın yerel xml depolama ve sorgu yetenekleri vardır, bkz. [Oracle XML DB](https://www.oracle.com/tr/database/technologies/appdev/xmldb.html).
- SQL Server'ın da yerel xml depolama ve sorgu yetenekleri vardır, bkz. [Sql Server XML Data](https://learn.microsoft.com/en-us/sql/relational-databases/xml/xml-data-sql-server?view=sql-server-ver16)

## JSON verisi

Veritabanı dünyasında sözde nosql hareketinin başarısından sonra, tüm üreticiler JSON verilerini desteklemeye başladı.
Oracle, mongodb (lider bir json belge veritabanı) bağlantılarını yerel olarak destekler ve (mongodb uygulamalarında SQL kullanımını destekler)[https://blogs.oracle.com/database/post/proper-sql-comes-to-mongodb-applications-with-oracle].

JSON, kursumuzda ele alacağımız üç veritabanının hepsinde desteklenmektedir.

- [Oracle JSON](https://blogs.oracle.com/database/post/json-relational-duality-app-dev)
- [SQL Server JSON](https://learn.microsoft.com/en-us/sql/relational-databases/json/json-data-sql-server?view=sql-server-ver16)
- [Sqlite JSON](https://www.sqlite.org/json1.html)


## Grafik Verisi

- [Oracle entegre grafik veritabanı](https://www.oracle.com/database/integrated-graph-database) olarak çalışır
- [Sql server Grafik işleme desteği](https://learn.microsoft.com/en-us/sql/relational-databases/graphs/sql-graph-overview?view=sql-server-ver16).





## Yapay Zeka/Vektör verileri

Oracle veritabanı yeni sürümünde YZ vektör yeteneklerini destekliyor.
Yeni Oracle 23 sürümü bu yetenekleri vurgulamak için 23ai olarak adlandırılıyor.
- [oracle vektör veritabanı](https://www.oracle.com/database/vector-database) adresine bakın.
- [oracle 23 ai'nin üretken AI uygulamalarını nasıl desteklediğini](https://www.oracle.com/news/announcement/ocw-integrated-vector-database-augments-generative-ai-2023-09-19) adresine bakın


## Redis

Rails, veritabanında [redis değişimi için bir eklenti](https://github.com/rails/solid_cable) sunuyor.


Redis'ten (anahtar-değer veritabanı) SQLite'a bir uygulama geçişinin örneği için aşağıdaki videoyu izleyin.

Bir web uygulama güvenlik duvarı olan Wafris, bu geçişle 3 kat performans iyileştirmesi elde etti.
Aşağıdaki [blog yazısı: Yeniden Mimarlık: Redis'ten SQLite'a](https://wafris.org/blog/rearchitecting-for-sqlite) ve [video: Mike Buckbee ile Redis'ten SQLite'a Geçiş](https://www.youtube.com/watch?v=EwDuYId5v8k)'e bakın.
Lütfen veritabanından okumanın veritabanına yazmaktan çok daha önemli olduğu çok özel bir kullanım durumlarına sahip olduklarını unutmayın.



## Kafka

Yalnızca ekleme günlüğüdür.
Bu amaçla veritabanı tablolarını kullanabilirsiniz.
Elbette, Kafka gibi terabaytlarca veriye ölçeklenmiyor ancak uygulamanızın bu kadar ölçeklenmeye ihtiyacı olup olmadığını kendinize sorun.

Ayrıca, Oracle'dan Exadata gibi güçlü veritabanı sunucularına sahip işletmeler için bu kadar veri için ölçeklendirme yapmak mümkündür.



## Tam metin araması

Basitçe, tam metin arama motorları kullanıcıların belirli bir arama teriminin bir veya daha fazla örneğini içeren dosyaları bulmak için çok çeşitli belgelerde etkili bir şekilde arama yapmalarını sağlar.
Örneğin, Google'ın araması, "sqlite" gibi belirli bir terimi içeren tüm web belgelerini bulmak için tam metin arama motoru işlevi görür.

- [Oracle Full-Text Search](https://docs.oracle.com/en/database/oracle/oracle-database/21/adjsn/full-text-search-queries.html)
- [Sql Server Full-Text Search](https://learn.microsoft.com/en-us/sql/relational-databases/search/full-text-search?view=sql-server-ver16)
- [Sqlite Full-Text Search](https://www.sqlite.org/fts5.html)

Çok sayıda belgeyle kullanıldığında tam metin aramaları LIKE operatörlerinden daha hızlıdır.

## Entegre programlama dilleri

Saklanan prosedürler ve işlevler kullanılarak, veritabanları veritabanlarında birlikte veri ve kodla çalışmak için güçlü özellikler sunar.
Bu prosedürler ve işlevler prosedürel uzantılarıyla (T-SQL, PL/SQL) veya C#, Java ve [R](https://docs.oracle.com/cd/E57012_01/doc.141/e56973/intro.htm) gibi diğer genel amaçlı programlama dilleriyle yazılabilir.



Bu özelliklerin çoğundan pek hoşlanmıyorum ama bazı yazılım şirketleri tarafından yaygın olarak kullanılıyorlar.

Bunlar hakkında daha fazla bilgi için saklı prosedürler @sec-sql-stored-procedures bölümüne bakınız.



## Aynı fikir için diğer bakış açıları:

En iyisi. veritabanları diğerlerine sahip olacak, json, vektör, metin ....

- [Son On Yılların Veri Yönetiminin Kısa Özeti Hannes Mühleisen GOTO 2024](https://www.youtube.com/watch?v=-wCzn9gKoUk)

Aşağıda Postgres için bağlantılar var ancak fikir hala aynı.


- [Sadece Postgres kullanın](https://mccue.dev/pages/8-16-24-just-use-postgres)

- [Her Şeyden Önce Postgres - Bir Sonraki Web Uygulamanız İçin Muhtemelen Sadece Postgres Kullanmalısınız](https://hamy.xyz/labs/2024-09_postgres-over-everything)

- [Her Yerde ve Her Şey İçin PostgreSQL](https://dzone.com/articles/postgresql-everywhere-and-for-everything)

- [Her Şey İçin Postgres](https://www.amazingcto.com/postgres-for-everything/)






