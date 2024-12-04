## Database users

Since sqlite is file based database, file permission in the operating system manages the access.
Sqlite user is also **the admin user** and this is unavoidable and by design.

But for the other database servers, following conditions apply.

1. Direct connection to production database should be limited to DBAs.
2. Do not connect with admin user 
	- SQL Server sa
	- Oracle SYS 
3. Programs should connect with their application users.
4. Even DBAs should connect with non-admin user for non-administrative tasks. 
This is unfortunately rarely followed. 
5. In oracle, schema owner is also a user. 
The user has a lot of rights in the schema. 
For example, Chinook is both schema and user in the oracle database.
If chinook user is used to connect to database, application could do a lot of things in that schema this includes dropping every object in the schema.

Instead of using schema owners, application users should be used, for example app_chinook to connect to database and restricting this user for select/update/insert/delete commands.
Using Oracle Logon triggers to change application user schema to module schema is useful in this case.

### create application user example

- oracle
- sql server