# Database convergence

Relational databases are boring and boring is good, especially when money is concerned.
DocumentDBs like MongoDB is popular for their straightforward start but the problems comes later when you need to keep your data consistent.

Also, old boring technologies will have a lot of utilities for different needs.
For example, schema comparison is widely supported in old boring databases but please look at for same use case in document databases.


## relational database is a very good first choice for a lot of use cases

You should always start with relational database when starting your application.
Premature optimization is root of all evil.
Then, **if needed** add other technologies to your application.

For a lot of use cases, relational databases are very good first choice.
You could use facade design pattern when you are implementing your API.
Then **when needed**, you could switch underlying implementation to different technologies.
This could be done with a lot of use case like below:

- Events 
- Logs
- Documents
	* Search in documents
- Key/Value cache like redis
- Full text search

This way, instead of starting with a lot of  technologies like kafka, redis, elastic search; you could start with relational database and later add this technologies if/when needed.




## Databases add new technologies to their stacks

1. Objects
2. XML Data
3. JSON Data
4. Graphs
5. Vectors


## Object Database

Oracle supports [Oracle Object-Relational](https://docs.oracle.com/en/database/oracle/oracle-database/23/adobj/index.html) paradigm.
Object databases was popular for a time and oracle incorporated these features.
I have never seen these object features used in the production oracle databases.

SQL Server and Sqlite does not support Object-Relational paradigm.
Among open source database systems, [postgres support it](https://learn.postgreshelp.com/courses/postgresql-tutorial-dba/lesson/object-relational-database-management-system)



## XML Data

- Oracle has native xml storage and query capabilities, see [Oracle XML DB](https://www.oracle.com/tr/database/technologies/appdev/xmldb.html).
- SQL server also has native xml storage and query capabilities, see [Sql Server XML Data](https://learn.microsoft.com/en-us/sql/relational-databases/xml/xml-data-sql-server?view=sql-server-ver16)

## JSON data

After the success of the so-called nosql movement in database world, all of the vendors started to support JSON data.
Oracle even supports mongodb (a leading json document database) connections natively and (support SQL with mongodb applications)[https://blogs.oracle.com/database/post/proper-sql-comes-to-mongodb-applications-with-oracle].

JSON is supported in all of the three databases, we will cover in our course.

- [Oracle JSON](https://blogs.oracle.com/database/post/json-relational-duality-app-dev)
- [SQL Server JSON](https://learn.microsoft.com/en-us/sql/relational-databases/json/json-data-sql-server?view=sql-server-ver16)
- [Sqlite JSON](https://www.sqlite.org/json1.html)


## Graph Data

- Oracle works as [integrated graph database](https://www.oracle.com/database/integrated-graph-database)
- Sql server support [Graph processing](https://learn.microsoft.com/en-us/sql/relational-databases/graphs/sql-graph-overview?view=sql-server-ver16).






## AI/Vector data

Oracle database supports AI vector capabilities in its new version.
New Oracle 23 version is even named as 23ai to emphasize this capabilities.
- See [oracle vector database](https://www.oracle.com/database/vector-database).
- See [how oracle 23 ai support generative AI applications](https://www.oracle.com/news/announcement/ocw-integrated-vector-database-augments-generative-ai-2023-09-19)





## Redis

Rails offer a plugin for redis replacement in the database.

https://github.com/rails/solid_cable


See below video for an example of an application migration to sqlite (a relation database) from redis, key-value database.

Wafris, a web application firewall, achieved 3x performance improvements with this migration.
See following [blog post:  Rearchitecting: Redis to SQLite ](https://wafris.org/blog/rearchitecting-for-sqlite) and [video: Moving from Redis to SQLite with Mike Buckbee](https://www.youtube.com/watch?v=EwDuYId5v8k).
Please note that they have a very specific use case where reading from database was way more important than writing to database.




## Kafka

It is append only log.
You can use database tables for this purpose.
Of course, it does not scale like kafka to terabytes of data but ask yourself if your application needs that much scale.

Also, for the enterprises, with their powerful database servers like exadata from oracle, it is possible to scale for that much data.

## Full text search

Simply, full-text search engines enable users to effectively search through a vast array of documents to find those that include one or more occurrences of a specified search term.
For instance, Google's search functions as a full-text search engine to locate all web documents that contain a particular term, such as "sqlite".

- [Oracle Full-Text Search](https://docs.oracle.com/en/database/oracle/oracle-database/21/adjsn/full-text-search-queries.html)
- [Sql Server Full-Text Search](https://learn.microsoft.com/en-us/sql/relational-databases/search/full-text-search?view=sql-server-ver16)
- [Sqlite Full-Text Search](https://www.sqlite.org/fts5.html)

Full text searches are faster than LIKE operators when used with a lot of documents.

## Integrated programming languages

Using stored procedures and functions, databases offer powerful features to work with data and code together in database.
These procedures and functions could be written with their procedural extensions (T-SQL, PL/SQL) or other general purpose programming languages like C#,Java and [R](https://docs.oracle.com/cd/E57012_01/doc.141/e56973/intro.htm).

I am not very fond of most of these features but they are widely used by some software companies.

See @sec-sql-stored-procedures (stored procedures) for more about them.





## Other perspectives for same idea:

Best one. databases will own others, json, vector, text ....
 
- [A Short Summary of the Last Decades of Data Management Hannes Mühleisen  GOTO 2024](https://www.youtube.com/watch?v=-wCzn9gKoUk)


Below are links for Postgres but the idea is still the same.


- [Just use Postgres](https://mccue.dev/pages/8-16-24-just-use-postgres)
- [Postgres Over Everything - Why You Should Probably Just use Postgres for your next Web App](https://hamy.xyz/labs/2024-09_postgres-over-everything)
- [PostgreSQL Everywhere and for Everything](https://dzone.com/articles/postgresql-everywhere-and-for-everything)

- [postgres for everything](https://www.amazingcto.com/postgres-for-everything/)