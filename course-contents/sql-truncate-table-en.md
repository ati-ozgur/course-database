# SQL TRUNCATE TABLE

Delete all rows the in the table.
Since this is an optimized command different databases handles it differently.

- In Oracle, "Truncate table" is DDL command and it commits the transaction and could not be rolled back.

- In SQL server, it is DML command and works in transactions normally.
See following [stack overflow question](https://stackoverflow.com/questions/1522931/truncate-table-within-transaction).

- sqlite do not have "Truncate table" command.


- [Sql Server Truncate table](https://learn.microsoft.com/en-us/sql/t-sql/statements/truncate-table-transact-sql?view=sql-server-ver16)

- [Oracle Truncate Table](https://docs.oracle.com/en/database/oracle/oracle-database/19/sqlrf/TRUNCATE-TABLE.html)