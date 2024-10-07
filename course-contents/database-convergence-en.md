# Database convergence

Relational databases are boring and boring is good, especially when money is concerned.
DocumentDBs like MongoDB is popular for their straightforward start but the problems comes later when you need to keep your data consistent.

Also, old boring technologies will have a lot of utilities for different needs.
For example, schema comparison is widely supported in different databases but please look at for same use case in document databases.







## Databases add new technologies to their stacks

1. Objects
2. XML Data
3. JSON Data
4. Graphs
5. Vectors

Add links from Oracle and others to this one.

## Use cases for relational database is a good choice

You should always start with relational database when starting your application.
Premature optimization is root of all evil.
Then, **if needed** add other technologies to your application.

For a lot of use cases, relational databases are very good first choice.
You could use facade design pattern when you are implementing your API.
Then **when needed**, you could switch underlying implementation to different technologies as need.
This could be done with a lot of use case like below:

- Events 
- Logs
- Documents
	* Search in documents
- Key/Value cache like redis

This way, instead of starting with a lot of  technologies like kafka, redis, elastic search; you could start with relational database and later add this technologies if needed.




### JSON data

### AI/Vector data

### Redis

Rails offer a plugin for redis replacement in the database.

https://github.com/rails/solid_cable


### Kafka

It is append only log.
You can use database tables for this purpose.
Of course, it does not scale like kafka to terabytes of data but ask yourself if your application needs that much scale.

Also, for the enterprises, with their powerful database servers like exadata from oracle, it is possible to scale for that much data.




## Other perspectives for same idea:

Below two links for Postgres but idea is still the same.


- https://mccue.dev/pages/8-16-24-just-use-postgres
- https://hamy.xyz/labs/2024-09_postgres-over-everything

