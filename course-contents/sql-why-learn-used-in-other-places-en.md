## Reason 3: SQL is used in places other than databases  {.unnumbered} 

SQL widely used in data science with databases and in memory data frames.
Data frames are in memory tables. 
Both python and R has different data frame implementations.
You could use SQL to create data frames from databases and query data frames themselves.
See below:

- [Query python pandas data frame](https://stackoverflow.com/questions/45865608/executing-an-sql-query-on-a-pandas-dataset)

- [Query R Data frame](https://www.rdocumentation.org/packages/sqldf/versions/0.4-11)

SQL is also used for other use cases like querying logs.

- [Query logs using SQL via log parser](https://techcommunity.microsoft.com/t5/exchange-team-blog/introducing-log-parser-studio/ba-p/601131)

Also, querying csv and excel files using SQL is possible.

- [Query csv files using SQL](https://superuser.com/questions/7169/querying-a-csv-file)

- [Query excel files using SQL](https://stackoverflow.com/questions/18798522/how-to-run-a-sql-query-on-an-excel-table)


- [osquery: Query system data using SQL ](https://osquery.readthedocs.io/en/stable/)

> osquery exposes an operating system as a high-performance relational database. This allows you to write SQL queries to explore operating system data. With osquery, SQL tables represent abstract concepts such as running processes, loaded kernel modules, open network connections, browser plugins, hardware events or file hashes.

